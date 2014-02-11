/*
Copyright (c) 2013, Broadcom Europe Ltd
Copyright (c) 2013, Tim Gover
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the copyright holder nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include <GLES/gl.h>
#include <GLES/glext.h>
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include "RaspiTexUtil.h"
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>


#include <stdio.h>

/* Vertex co-ordinates:
 *
 * v0----v1
 * |     |
 * |     |
 * |     |
 * v3----v2
 */

static const GLfloat vertices[] =
{
#define V0  -1.0,  1.0,  0.8,
#define V1   1.0,  1.0,  0.8,
#define V2   1.0, -1.0,  0.8,
#define V3  -1.0, -1.0,  0.8,
   V0 V3 V2 V2 V1 V0
};

/* Texture co-ordinates:
 *
 * (0,0) b--c
 *       |  |
 *       a--d
 *
 * b,a,d d,c,b
 */
static const GLfloat tex_coords[] =
{
   0, 0, 0, 1, 1, 1,
   1, 1, 1, 0, 0, 0
};

/*
* Single segment coordinates
*/
#define SEG_UNIT 0.1
#define SEG_WIDTH 0.15
static const GLfloat segment[] = 
{
	0.5*SEG_UNIT*SEG_WIDTH, 0, 0.25,
	1*SEG_UNIT*SEG_WIDTH, -0.1*SEG_UNIT, 0.25,
	0, -0.1*SEG_UNIT, 0.25,

	1*SEG_UNIT*SEG_WIDTH, -0.1*SEG_UNIT, 0.25,
	0, -0.1*SEG_UNIT, 0.25,
	1*SEG_UNIT*SEG_WIDTH, -0.9*SEG_UNIT, 0.25,
	0, -0.1*SEG_UNIT, 0.25,
	1*SEG_UNIT*SEG_WIDTH, -0.9*SEG_UNIT, 0.25,
	0, -0.9*SEG_UNIT, 0.25,
		
	0, -0.9*SEG_UNIT, 0.25,
	0.5*SEG_UNIT*SEG_WIDTH, -1*SEG_UNIT, 0.25,
	1*SEG_UNIT*SEG_WIDTH, -0.9*SEG_UNIT, 0.25
};

/**
* Affiche un segment aux coordonées (x,y) avec l'angle de rotation A spécifié
*/
static int draw_segment(GLfloat x, GLfloat y, GLfloat A)
{
   glLoadIdentity();
   glTranslatef(x, y, 0);
   glRotatef(A, 0.0, 0.0, 1.0);
   glEnableClientState(GL_VERTEX_ARRAY);
   glVertexPointer(3, GL_FLOAT, 0, segment);
   glDrawArrays(GL_TRIANGLES, 0, 12);
   glDisableClientState(GL_VERTEX_ARRAY);
   glLoadIdentity();
   return 0;
}

#define POINT_SIZE 0.15
static const GLfloat point[] = {
   0,0,0.25,
   0,1*SEG_UNIT*SEG_WIDTH,0.25,
   1*SEG_UNIT*SEG_WIDTH,0,0.25,
 
   1*SEG_UNIT*SEG_WIDTH, 1*SEG_UNIT*SEG_WIDTH, 0.25, 
   0,1*SEG_UNIT*SEG_WIDTH,0.25,
   1*SEG_UNIT*SEG_WIDTH,0,0.25
};
static int draw_point(GLfloat x, GLfloat y)
{
   glLoadIdentity();
   glTranslatef(x,y-2.1*SEG_UNIT,0);
   
   glEnableClientState(GL_VERTEX_ARRAY);
   glVertexPointer(3, GL_FLOAT, 0, point);
   glDrawArrays(GL_TRIANGLES, 0, 12);
   glDisableClientState(GL_VERTEX_ARRAY);
   glLoadIdentity();
   
   return 0;
}

/**
* Description des chiffres             en segments (chiffre 10 : "V", chiffre 11 : "=", chiffre 12 : "M"
*/
#define DIGIT_M 12
#define DIGIT_EQ 11
#define DIGIT_V 10

static const int dig_descr[13][7] = {{1,1,1,0,1,1,1},{0,0,0,0,0,1,1},{0,1,1,1,1,1,0},{0,0,1,1,1,1,1},{1,0,0,1,0,1,1},{1,0,1,1,1,0,1},{1,1,1,1,1,0,1},{0,0,1,0,0,1,1},{1,1,1,1,1,1,1},{1,0,1,1,1,1,1},{1,1,0,0,1,1,1},{0,0,0,1,1,0,0},{1,1,1,0,0,1,1}};

static int draw_digit(int digit, GLfloat  x, GLfloat y)
{
   if(dig_descr[digit][0] == 1)
      draw_segment(x+0, y+0, 0);
   
   if(dig_descr[digit][1] == 1)
      draw_segment(x+0, y-SEG_UNIT-0.05*SEG_UNIT, 0);

   if(dig_descr[digit][2] == 1)
      draw_segment(x+0.075*SEG_UNIT, y+0, 90);
   if(dig_descr[digit][3] == 1)
      draw_segment(x+0.075*SEG_UNIT, y-SEG_UNIT-0.1*SEG_UNIT, 90);
   if(dig_descr[digit][4] == 1)
      draw_segment(x+0.075*SEG_UNIT, y-2*SEG_UNIT-0.2*SEG_UNIT, 90);
   
   if(dig_descr[digit][5] == 1)
      draw_segment(x+SEG_UNIT, y+0, 0);
   if(dig_descr[digit][6] == 1)
      draw_segment(x+SEG_UNIT, y-SEG_UNIT-0.1*SEG_UNIT, 0);

  
   return 0;
}

/**
* Affiche un nombre flottant avec un chiffre après la virgule et deux chiffres avant 
*/
static int draw_number(float nb, GLfloat x, GLfloat y)
{
  int n1 = ((int)nb/10) - ((int)nb/100)*100;
  int n2 = ((int)nb) - ((int)nb/10)*10;
  int n3 = (int)(nb*10) - ((int)nb)*10;

  draw_digit(n1,x,y);
  draw_digit(n2,x+1.2*SEG_UNIT,y);
  draw_point(x+2.425*SEG_UNIT,y);
  draw_digit(n3, x+(2.55+SEG_WIDTH)*SEG_UNIT, y);

  return 0;
}

static int draw_speed(float nb, GLfloat x, GLfloat y)
{
  draw_digit(DIGIT_V, x, y);
  draw_digit(DIGIT_EQ, x+1.2*SEG_UNIT, y);
  draw_number(nb, x+2.4*SEG_UNIT, y);

  return 0;
}

static int draw_avspeed(float nb, GLfloat x, GLfloat y)
{
  draw_digit(DIGIT_M, x, y);
  draw_digit(DIGIT_EQ, x+1.2*SEG_UNIT, y);
  draw_number(nb, x+2.4*SEG_UNIT, y);

  return 0;
}


static GLfloat angle;
static uint32_t anim_step;

static int square_init(RASPITEX_STATE *state)
{
   int rc = raspitexutil_gl_init_1_0(state);

   if (rc != 0)
      goto end;

   angle = 0.0f;
   anim_step = 0;

   glClearColor(0, 0, 0, 0);
   glClearDepthf(1);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

end:
   return rc;
}

static int square_update_model(RASPITEX_STATE *state)
{
   int frames_per_rev = 30 * 15;
   (void) state;
   angle = 0;
   anim_step = (anim_step + 1) % frames_per_rev;

   return 0;
}

//float colorsss[] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,}};

static int square_redraw(RASPITEX_STATE *state)
{
   /* Bind the OES texture which is used to render the camera preview */
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   
   glEnable(GL_DEPTH_TEST);
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glEnable(GL_BLEND);

   GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, state->texture));
   glEnableClientState(GL_VERTEX_ARRAY);
   glVertexPointer(3, GL_FLOAT, 0, vertices);

   glEnableClientState(GL_TEXTURE_COORD_ARRAY);
   glTexCoordPointer(2, GL_FLOAT, 0, tex_coords);
   GLCHK(glDrawArrays(GL_TRIANGLES, 0, vcos_countof(tex_coords) / 2));
   glDisableClientState(GL_TEXTURE_COORD_ARRAY);
   glDisableClientState(GL_VERTEX_ARRAY);  
   

   glBindTexture(GL_TEXTURE_EXTERNAL_OES, 0);
    

   //glEnableClientState(GL_COLOR_ARRAY);
   //glColorPointer(4, GL_FLOAT, 0, colorsss);
   glColor4f(1.0, 0.0, 0.0, 1.0);
   draw_speed(25.6, 0.25,0.8);
   glColor4f(1.0, 0.6, 0.0, 1.0);
   draw_avspeed(25.3,0.25,0.45);
   glColor4f(1.0,1.0,1.0,1.0);
   //glClearColor(0, 0, 0, 0);
   //glDisableClientState(GL_COLOR_ARRAY);
    
   return 0;
}

int square_open(RASPITEX_STATE *state)
{
   state->ops.gl_init = square_init;
   state->ops.update_model = square_update_model;
   state->ops.redraw = square_redraw;
   state->ops.update_texture = raspitexutil_update_texture;
   return 0;
}
