# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug

# Include any dependencies generated for this target.
include AudioFileIO/sndlib/CMakeFiles/sndlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.make

# Include the progress variables for this target.
include AudioFileIO/sndlib/CMakeFiles/sndlib.dir/progress.make

# Include the compile flags for this target's objects.
include AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o: ../3rdparty/sndlib/audio.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o -MF CMakeFiles/sndlib.dir/audio.c.o.d -o CMakeFiles/sndlib.dir/audio.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/audio.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/audio.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/audio.c > CMakeFiles/sndlib.dir/audio.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/audio.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/audio.c -o CMakeFiles/sndlib.dir/audio.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o: ../3rdparty/sndlib/clm.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o -MF CMakeFiles/sndlib.dir/clm.c.o.d -o CMakeFiles/sndlib.dir/clm.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/clm.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm.c > CMakeFiles/sndlib.dir/clm.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/clm.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm.c -o CMakeFiles/sndlib.dir/clm.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o: ../3rdparty/sndlib/clm2xen.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o -MF CMakeFiles/sndlib.dir/clm2xen.c.o.d -o CMakeFiles/sndlib.dir/clm2xen.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm2xen.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/clm2xen.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm2xen.c > CMakeFiles/sndlib.dir/clm2xen.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/clm2xen.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/clm2xen.c -o CMakeFiles/sndlib.dir/clm2xen.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o: ../3rdparty/sndlib/headers.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o -MF CMakeFiles/sndlib.dir/headers.c.o.d -o CMakeFiles/sndlib.dir/headers.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/headers.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/headers.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/headers.c > CMakeFiles/sndlib.dir/headers.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/headers.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/headers.c -o CMakeFiles/sndlib.dir/headers.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o: ../3rdparty/sndlib/io.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o -MF CMakeFiles/sndlib.dir/io.c.o.d -o CMakeFiles/sndlib.dir/io.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/io.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/io.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/io.c > CMakeFiles/sndlib.dir/io.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/io.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/io.c -o CMakeFiles/sndlib.dir/io.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o: ../3rdparty/sndlib/s7.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o -MF CMakeFiles/sndlib.dir/s7.c.o.d -o CMakeFiles/sndlib.dir/s7.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/s7.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/s7.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/s7.c > CMakeFiles/sndlib.dir/s7.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/s7.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/s7.c -o CMakeFiles/sndlib.dir/s7.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o: ../3rdparty/sndlib/sndlib2xen.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o -MF CMakeFiles/sndlib.dir/sndlib2xen.c.o.d -o CMakeFiles/sndlib.dir/sndlib2xen.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sndlib2xen.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/sndlib2xen.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sndlib2xen.c > CMakeFiles/sndlib.dir/sndlib2xen.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/sndlib2xen.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sndlib2xen.c -o CMakeFiles/sndlib.dir/sndlib2xen.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o: ../3rdparty/sndlib/sound.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o -MF CMakeFiles/sndlib.dir/sound.c.o.d -o CMakeFiles/sndlib.dir/sound.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sound.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/sound.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sound.c > CMakeFiles/sndlib.dir/sound.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/sound.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/sound.c -o CMakeFiles/sndlib.dir/sound.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o: ../3rdparty/sndlib/vct.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o -MF CMakeFiles/sndlib.dir/vct.c.o.d -o CMakeFiles/sndlib.dir/vct.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/vct.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/vct.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/vct.c > CMakeFiles/sndlib.dir/vct.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/vct.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/vct.c -o CMakeFiles/sndlib.dir/vct.c.s

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/flags.make
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o: ../3rdparty/sndlib/xen.c
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o -MF CMakeFiles/sndlib.dir/xen.c.o.d -o CMakeFiles/sndlib.dir/xen.c.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/xen.c

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sndlib.dir/xen.c.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/xen.c > CMakeFiles/sndlib.dir/xen.c.i

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sndlib.dir/xen.c.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib/xen.c -o CMakeFiles/sndlib.dir/xen.c.s

# Object files for target sndlib
sndlib_OBJECTS = \
"CMakeFiles/sndlib.dir/audio.c.o" \
"CMakeFiles/sndlib.dir/clm.c.o" \
"CMakeFiles/sndlib.dir/clm2xen.c.o" \
"CMakeFiles/sndlib.dir/headers.c.o" \
"CMakeFiles/sndlib.dir/io.c.o" \
"CMakeFiles/sndlib.dir/s7.c.o" \
"CMakeFiles/sndlib.dir/sndlib2xen.c.o" \
"CMakeFiles/sndlib.dir/sound.c.o" \
"CMakeFiles/sndlib.dir/vct.c.o" \
"CMakeFiles/sndlib.dir/xen.c.o"

# External object files for target sndlib
sndlib_EXTERNAL_OBJECTS =

../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/audio.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clm2xen.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/headers.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/io.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/s7.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sndlib2xen.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/sound.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/vct.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/xen.c.o
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/build.make
../lib/Debug/libsndlib.a: AudioFileIO/sndlib/CMakeFiles/sndlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library ../../../lib/Debug/libsndlib.a"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && $(CMAKE_COMMAND) -P CMakeFiles/sndlib.dir/cmake_clean_target.cmake
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sndlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AudioFileIO/sndlib/CMakeFiles/sndlib.dir/build: ../lib/Debug/libsndlib.a
.PHONY : AudioFileIO/sndlib/CMakeFiles/sndlib.dir/build

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clean:
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib && $(CMAKE_COMMAND) -P CMakeFiles/sndlib.dir/cmake_clean.cmake
.PHONY : AudioFileIO/sndlib/CMakeFiles/sndlib.dir/clean

AudioFileIO/sndlib/CMakeFiles/sndlib.dir/depend:
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106 /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/3rdparty/sndlib /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/AudioFileIO/sndlib/CMakeFiles/sndlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AudioFileIO/sndlib/CMakeFiles/sndlib.dir/depend

