# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /project/workspace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /project/workspace/build

# Include any dependencies generated for this target.
include clock/CMakeFiles/clock.dir/depend.make

# Include the progress variables for this target.
include clock/CMakeFiles/clock.dir/progress.make

# Include the compile flags for this target's objects.
include clock/CMakeFiles/clock.dir/flags.make

clock/CMakeFiles/clock.dir/src/clock.cpp.o: clock/CMakeFiles/clock.dir/flags.make
clock/CMakeFiles/clock.dir/src/clock.cpp.o: ../clock/src/clock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/project/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object clock/CMakeFiles/clock.dir/src/clock.cpp.o"
	cd /project/workspace/build/clock && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clock.dir/src/clock.cpp.o -c /project/workspace/clock/src/clock.cpp

clock/CMakeFiles/clock.dir/src/clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clock.dir/src/clock.cpp.i"
	cd /project/workspace/build/clock && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /project/workspace/clock/src/clock.cpp > CMakeFiles/clock.dir/src/clock.cpp.i

clock/CMakeFiles/clock.dir/src/clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clock.dir/src/clock.cpp.s"
	cd /project/workspace/build/clock && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /project/workspace/clock/src/clock.cpp -o CMakeFiles/clock.dir/src/clock.cpp.s

# Object files for target clock
clock_OBJECTS = \
"CMakeFiles/clock.dir/src/clock.cpp.o"

# External object files for target clock
clock_EXTERNAL_OBJECTS =

clock/libclock.a: clock/CMakeFiles/clock.dir/src/clock.cpp.o
clock/libclock.a: clock/CMakeFiles/clock.dir/build.make
clock/libclock.a: clock/CMakeFiles/clock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/project/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libclock.a"
	cd /project/workspace/build/clock && $(CMAKE_COMMAND) -P CMakeFiles/clock.dir/cmake_clean_target.cmake
	cd /project/workspace/build/clock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
clock/CMakeFiles/clock.dir/build: clock/libclock.a

.PHONY : clock/CMakeFiles/clock.dir/build

clock/CMakeFiles/clock.dir/clean:
	cd /project/workspace/build/clock && $(CMAKE_COMMAND) -P CMakeFiles/clock.dir/cmake_clean.cmake
.PHONY : clock/CMakeFiles/clock.dir/clean

clock/CMakeFiles/clock.dir/depend:
	cd /project/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /project/workspace /project/workspace/clock /project/workspace/build /project/workspace/build/clock /project/workspace/build/clock/CMakeFiles/clock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : clock/CMakeFiles/clock.dir/depend

