# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/CamTor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/CamTor

# Include any dependencies generated for this target.
include CMakeFiles/CamTor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CamTor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CamTor.dir/flags.make

CMakeFiles/CamTor.dir/RaspiCamControl.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/RaspiCamControl.c.o: RaspiCamControl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/RaspiCamControl.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/RaspiCamControl.c.o   -c /home/pi/CamTor/RaspiCamControl.c

CMakeFiles/CamTor.dir/RaspiCamControl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/RaspiCamControl.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/RaspiCamControl.c > CMakeFiles/CamTor.dir/RaspiCamControl.c.i

CMakeFiles/CamTor.dir/RaspiCamControl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/RaspiCamControl.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/RaspiCamControl.c -o CMakeFiles/CamTor.dir/RaspiCamControl.c.s

CMakeFiles/CamTor.dir/RaspiCamControl.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/RaspiCamControl.c.o.requires

CMakeFiles/CamTor.dir/RaspiCamControl.c.o.provides: CMakeFiles/CamTor.dir/RaspiCamControl.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/RaspiCamControl.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/RaspiCamControl.c.o.provides

CMakeFiles/CamTor.dir/RaspiCamControl.c.o.provides.build: CMakeFiles/CamTor.dir/RaspiCamControl.c.o

CMakeFiles/CamTor.dir/RaspiCLI.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/RaspiCLI.c.o: RaspiCLI.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/RaspiCLI.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/RaspiCLI.c.o   -c /home/pi/CamTor/RaspiCLI.c

CMakeFiles/CamTor.dir/RaspiCLI.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/RaspiCLI.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/RaspiCLI.c > CMakeFiles/CamTor.dir/RaspiCLI.c.i

CMakeFiles/CamTor.dir/RaspiCLI.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/RaspiCLI.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/RaspiCLI.c -o CMakeFiles/CamTor.dir/RaspiCLI.c.s

CMakeFiles/CamTor.dir/RaspiCLI.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/RaspiCLI.c.o.requires

CMakeFiles/CamTor.dir/RaspiCLI.c.o.provides: CMakeFiles/CamTor.dir/RaspiCLI.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/RaspiCLI.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/RaspiCLI.c.o.provides

CMakeFiles/CamTor.dir/RaspiCLI.c.o.provides.build: CMakeFiles/CamTor.dir/RaspiCLI.c.o

CMakeFiles/CamTor.dir/RaspiPreview.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/RaspiPreview.c.o: RaspiPreview.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/RaspiPreview.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/RaspiPreview.c.o   -c /home/pi/CamTor/RaspiPreview.c

CMakeFiles/CamTor.dir/RaspiPreview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/RaspiPreview.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/RaspiPreview.c > CMakeFiles/CamTor.dir/RaspiPreview.c.i

CMakeFiles/CamTor.dir/RaspiPreview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/RaspiPreview.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/RaspiPreview.c -o CMakeFiles/CamTor.dir/RaspiPreview.c.s

CMakeFiles/CamTor.dir/RaspiPreview.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/RaspiPreview.c.o.requires

CMakeFiles/CamTor.dir/RaspiPreview.c.o.provides: CMakeFiles/CamTor.dir/RaspiPreview.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/RaspiPreview.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/RaspiPreview.c.o.provides

CMakeFiles/CamTor.dir/RaspiPreview.c.o.provides.build: CMakeFiles/CamTor.dir/RaspiPreview.c.o

CMakeFiles/CamTor.dir/RaspiTexUtil.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/RaspiTexUtil.c.o: RaspiTexUtil.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/RaspiTexUtil.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/RaspiTexUtil.c.o   -c /home/pi/CamTor/RaspiTexUtil.c

CMakeFiles/CamTor.dir/RaspiTexUtil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/RaspiTexUtil.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/RaspiTexUtil.c > CMakeFiles/CamTor.dir/RaspiTexUtil.c.i

CMakeFiles/CamTor.dir/RaspiTexUtil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/RaspiTexUtil.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/RaspiTexUtil.c -o CMakeFiles/CamTor.dir/RaspiTexUtil.c.s

CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.requires

CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.provides: CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.provides

CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.provides.build: CMakeFiles/CamTor.dir/RaspiTexUtil.c.o

CMakeFiles/CamTor.dir/RaspiTex.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/RaspiTex.c.o: RaspiTex.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/RaspiTex.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/RaspiTex.c.o   -c /home/pi/CamTor/RaspiTex.c

CMakeFiles/CamTor.dir/RaspiTex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/RaspiTex.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/RaspiTex.c > CMakeFiles/CamTor.dir/RaspiTex.c.i

CMakeFiles/CamTor.dir/RaspiTex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/RaspiTex.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/RaspiTex.c -o CMakeFiles/CamTor.dir/RaspiTex.c.s

CMakeFiles/CamTor.dir/RaspiTex.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/RaspiTex.c.o.requires

CMakeFiles/CamTor.dir/RaspiTex.c.o.provides: CMakeFiles/CamTor.dir/RaspiTex.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/RaspiTex.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/RaspiTex.c.o.provides

CMakeFiles/CamTor.dir/RaspiTex.c.o.provides.build: CMakeFiles/CamTor.dir/RaspiTex.c.o

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o: gl_scenes/mirror.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o   -c /home/pi/CamTor/gl_scenes/mirror.c

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/gl_scenes/mirror.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/gl_scenes/mirror.c > CMakeFiles/CamTor.dir/gl_scenes/mirror.c.i

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/gl_scenes/mirror.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/gl_scenes/mirror.c -o CMakeFiles/CamTor.dir/gl_scenes/mirror.c.s

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.requires

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.provides: CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.provides

CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.provides.build: CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o

CMakeFiles/CamTor.dir/gl_scenes/square.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/gl_scenes/square.c.o: gl_scenes/square.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/gl_scenes/square.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/gl_scenes/square.c.o   -c /home/pi/CamTor/gl_scenes/square.c

CMakeFiles/CamTor.dir/gl_scenes/square.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/gl_scenes/square.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/gl_scenes/square.c > CMakeFiles/CamTor.dir/gl_scenes/square.c.i

CMakeFiles/CamTor.dir/gl_scenes/square.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/gl_scenes/square.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/gl_scenes/square.c -o CMakeFiles/CamTor.dir/gl_scenes/square.c.s

CMakeFiles/CamTor.dir/gl_scenes/square.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/square.c.o.requires

CMakeFiles/CamTor.dir/gl_scenes/square.c.o.provides: CMakeFiles/CamTor.dir/gl_scenes/square.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/gl_scenes/square.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/square.c.o.provides

CMakeFiles/CamTor.dir/gl_scenes/square.c.o.provides.build: CMakeFiles/CamTor.dir/gl_scenes/square.c.o

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o: gl_scenes/yuv.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o   -c /home/pi/CamTor/gl_scenes/yuv.c

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/gl_scenes/yuv.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/gl_scenes/yuv.c > CMakeFiles/CamTor.dir/gl_scenes/yuv.c.i

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/gl_scenes/yuv.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/gl_scenes/yuv.c -o CMakeFiles/CamTor.dir/gl_scenes/yuv.c.s

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.requires

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.provides: CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.provides

CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.provides.build: CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o: gl_scenes/sobel.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o   -c /home/pi/CamTor/gl_scenes/sobel.c

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/gl_scenes/sobel.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/gl_scenes/sobel.c > CMakeFiles/CamTor.dir/gl_scenes/sobel.c.i

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/gl_scenes/sobel.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/gl_scenes/sobel.c -o CMakeFiles/CamTor.dir/gl_scenes/sobel.c.s

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.requires

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.provides: CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.provides

CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.provides.build: CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o

CMakeFiles/CamTor.dir/tga.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/tga.c.o: tga.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/tga.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/tga.c.o   -c /home/pi/CamTor/tga.c

CMakeFiles/CamTor.dir/tga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/tga.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/tga.c > CMakeFiles/CamTor.dir/tga.c.i

CMakeFiles/CamTor.dir/tga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/tga.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/tga.c -o CMakeFiles/CamTor.dir/tga.c.s

CMakeFiles/CamTor.dir/tga.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/tga.c.o.requires

CMakeFiles/CamTor.dir/tga.c.o.provides: CMakeFiles/CamTor.dir/tga.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/tga.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/tga.c.o.provides

CMakeFiles/CamTor.dir/tga.c.o.provides.build: CMakeFiles/CamTor.dir/tga.c.o

CMakeFiles/CamTor.dir/CamTor.c.o: CMakeFiles/CamTor.dir/flags.make
CMakeFiles/CamTor.dir/CamTor.c.o: CamTor.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/CamTor/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/CamTor.dir/CamTor.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/CamTor.dir/CamTor.c.o   -c /home/pi/CamTor/CamTor.c

CMakeFiles/CamTor.dir/CamTor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CamTor.dir/CamTor.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/CamTor/CamTor.c > CMakeFiles/CamTor.dir/CamTor.c.i

CMakeFiles/CamTor.dir/CamTor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CamTor.dir/CamTor.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/CamTor/CamTor.c -o CMakeFiles/CamTor.dir/CamTor.c.s

CMakeFiles/CamTor.dir/CamTor.c.o.requires:
.PHONY : CMakeFiles/CamTor.dir/CamTor.c.o.requires

CMakeFiles/CamTor.dir/CamTor.c.o.provides: CMakeFiles/CamTor.dir/CamTor.c.o.requires
	$(MAKE) -f CMakeFiles/CamTor.dir/build.make CMakeFiles/CamTor.dir/CamTor.c.o.provides.build
.PHONY : CMakeFiles/CamTor.dir/CamTor.c.o.provides

CMakeFiles/CamTor.dir/CamTor.c.o.provides.build: CMakeFiles/CamTor.dir/CamTor.c.o

# Object files for target CamTor
CamTor_OBJECTS = \
"CMakeFiles/CamTor.dir/RaspiCamControl.c.o" \
"CMakeFiles/CamTor.dir/RaspiCLI.c.o" \
"CMakeFiles/CamTor.dir/RaspiPreview.c.o" \
"CMakeFiles/CamTor.dir/RaspiTexUtil.c.o" \
"CMakeFiles/CamTor.dir/RaspiTex.c.o" \
"CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o" \
"CMakeFiles/CamTor.dir/gl_scenes/square.c.o" \
"CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o" \
"CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o" \
"CMakeFiles/CamTor.dir/tga.c.o" \
"CMakeFiles/CamTor.dir/CamTor.c.o"

# External object files for target CamTor
CamTor_EXTERNAL_OBJECTS =

CamTor: CMakeFiles/CamTor.dir/RaspiCamControl.c.o
CamTor: CMakeFiles/CamTor.dir/RaspiCLI.c.o
CamTor: CMakeFiles/CamTor.dir/RaspiPreview.c.o
CamTor: CMakeFiles/CamTor.dir/RaspiTexUtil.c.o
CamTor: CMakeFiles/CamTor.dir/RaspiTex.c.o
CamTor: CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o
CamTor: CMakeFiles/CamTor.dir/gl_scenes/square.c.o
CamTor: CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o
CamTor: CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o
CamTor: CMakeFiles/CamTor.dir/tga.c.o
CamTor: CMakeFiles/CamTor.dir/CamTor.c.o
CamTor: CMakeFiles/CamTor.dir/build.make
CamTor: /opt/vc/lib/libmmal_core.so
CamTor: /opt/vc/lib/libmmal_util.so
CamTor: /opt/vc/lib/libmmal_vc_client.so
CamTor: /opt/vc/lib/libvcos.so
CamTor: /opt/vc/lib/libbcm_host.so
CamTor: /opt/vc/lib/libEGL.so
CamTor: /opt/vc/lib/libGLESv2.so
CamTor: CMakeFiles/CamTor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable CamTor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CamTor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CamTor.dir/build: CamTor
.PHONY : CMakeFiles/CamTor.dir/build

CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/RaspiCamControl.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/RaspiCLI.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/RaspiPreview.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/RaspiTexUtil.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/RaspiTex.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/gl_scenes/mirror.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/gl_scenes/square.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/gl_scenes/yuv.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/gl_scenes/sobel.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/tga.c.o.requires
CMakeFiles/CamTor.dir/requires: CMakeFiles/CamTor.dir/CamTor.c.o.requires
.PHONY : CMakeFiles/CamTor.dir/requires

CMakeFiles/CamTor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CamTor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CamTor.dir/clean

CMakeFiles/CamTor.dir/depend:
	cd /home/pi/CamTor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/CamTor /home/pi/CamTor /home/pi/CamTor /home/pi/CamTor /home/pi/CamTor/CMakeFiles/CamTor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CamTor.dir/depend

