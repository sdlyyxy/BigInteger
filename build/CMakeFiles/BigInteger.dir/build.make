# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /root/project/BigInteger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/project/BigInteger/build

# Include any dependencies generated for this target.
include CMakeFiles/BigInteger.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BigInteger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BigInteger.dir/flags.make

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o: CMakeFiles/BigInteger.dir/flags.make
CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o: ../lib/BigInteger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/project/BigInteger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o -c /root/project/BigInteger/lib/BigInteger.cpp

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/project/BigInteger/lib/BigInteger.cpp > CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.i

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/project/BigInteger/lib/BigInteger.cpp -o CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.s

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.requires:

.PHONY : CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.requires

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.provides: CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.requires
	$(MAKE) -f CMakeFiles/BigInteger.dir/build.make CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.provides.build
.PHONY : CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.provides

CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.provides.build: CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o


# Object files for target BigInteger
BigInteger_OBJECTS = \
"CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o"

# External object files for target BigInteger
BigInteger_EXTERNAL_OBJECTS =

libBigInteger.a: CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o
libBigInteger.a: CMakeFiles/BigInteger.dir/build.make
libBigInteger.a: CMakeFiles/BigInteger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/project/BigInteger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libBigInteger.a"
	$(CMAKE_COMMAND) -P CMakeFiles/BigInteger.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BigInteger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BigInteger.dir/build: libBigInteger.a

.PHONY : CMakeFiles/BigInteger.dir/build

CMakeFiles/BigInteger.dir/requires: CMakeFiles/BigInteger.dir/lib/BigInteger.cpp.o.requires

.PHONY : CMakeFiles/BigInteger.dir/requires

CMakeFiles/BigInteger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BigInteger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BigInteger.dir/clean

CMakeFiles/BigInteger.dir/depend:
	cd /root/project/BigInteger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/project/BigInteger /root/project/BigInteger /root/project/BigInteger/build /root/project/BigInteger/build /root/project/BigInteger/build/CMakeFiles/BigInteger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BigInteger.dir/depend
