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
include CombFilter/CMakeFiles/CombFilter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CombFilter/CMakeFiles/CombFilter.dir/compiler_depend.make

# Include the progress variables for this target.
include CombFilter/CMakeFiles/CombFilter.dir/progress.make

# Include the compile flags for this target's objects.
include CombFilter/CMakeFiles/CombFilter.dir/flags.make

CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o: CombFilter/CMakeFiles/CombFilter.dir/flags.make
CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o: ../src/CombFilter/CombFilter.cpp
CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o: CombFilter/CMakeFiles/CombFilter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o -MF CMakeFiles/CombFilter.dir/CombFilter.cpp.o.d -o CMakeFiles/CombFilter.dir/CombFilter.cpp.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilter.cpp

CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CombFilter.dir/CombFilter.cpp.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilter.cpp > CMakeFiles/CombFilter.dir/CombFilter.cpp.i

CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CombFilter.dir/CombFilter.cpp.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilter.cpp -o CMakeFiles/CombFilter.dir/CombFilter.cpp.s

CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o: CombFilter/CMakeFiles/CombFilter.dir/flags.make
CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o: ../src/CombFilter/CombFilterIf.cpp
CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o: CombFilter/CMakeFiles/CombFilter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o -MF CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o.d -o CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o -c /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilterIf.cpp

CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CombFilter.dir/CombFilterIf.cpp.i"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilterIf.cpp > CMakeFiles/CombFilter.dir/CombFilterIf.cpp.i

CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CombFilter.dir/CombFilterIf.cpp.s"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter/CombFilterIf.cpp -o CMakeFiles/CombFilter.dir/CombFilterIf.cpp.s

# Object files for target CombFilter
CombFilter_OBJECTS = \
"CMakeFiles/CombFilter.dir/CombFilter.cpp.o" \
"CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o"

# External object files for target CombFilter
CombFilter_EXTERNAL_OBJECTS =

../lib/Debug/libCombFilter.a: CombFilter/CMakeFiles/CombFilter.dir/CombFilter.cpp.o
../lib/Debug/libCombFilter.a: CombFilter/CMakeFiles/CombFilter.dir/CombFilterIf.cpp.o
../lib/Debug/libCombFilter.a: CombFilter/CMakeFiles/CombFilter.dir/build.make
../lib/Debug/libCombFilter.a: CombFilter/CMakeFiles/CombFilter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/Debug/libCombFilter.a"
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && $(CMAKE_COMMAND) -P CMakeFiles/CombFilter.dir/cmake_clean_target.cmake
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CombFilter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CombFilter/CMakeFiles/CombFilter.dir/build: ../lib/Debug/libCombFilter.a
.PHONY : CombFilter/CMakeFiles/CombFilter.dir/build

CombFilter/CMakeFiles/CombFilter.dir/clean:
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter && $(CMAKE_COMMAND) -P CMakeFiles/CombFilter.dir/cmake_clean.cmake
.PHONY : CombFilter/CMakeFiles/CombFilter.dir/clean

CombFilter/CMakeFiles/CombFilter.dir/depend:
	cd /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106 /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/src/CombFilter /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter /Users/johnmcnamara/Documents/GitHub/2022-MUSI6106/cmake-build-debug/CombFilter/CMakeFiles/CombFilter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CombFilter/CMakeFiles/CombFilter.dir/depend

