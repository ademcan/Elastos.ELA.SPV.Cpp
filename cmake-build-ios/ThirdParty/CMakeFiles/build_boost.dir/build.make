# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios

# Utility rule file for build_boost.

# Include the progress variables for this target.
include ThirdParty/CMakeFiles/build_boost.dir/progress.make

ThirdParty/CMakeFiles/build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a
ThirdParty/CMakeFiles/build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_system.a
ThirdParty/CMakeFiles/build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_program_options.a
ThirdParty/CMakeFiles/build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_thread.a


ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building boost for ios..."
	cd /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/ThirdParty/boost && SRCDIR=/Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost OUTPUT_DIR=/Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost/build ./boost.sh -ios --boost-libs "filesystem system program_options thread"

ThirdParty/boost/build/ios/prefix/lib/libboost_system.a: ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a
	@$(CMAKE_COMMAND) -E touch_nocreate ThirdParty/boost/build/ios/prefix/lib/libboost_system.a

ThirdParty/boost/build/ios/prefix/lib/libboost_program_options.a: ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a
	@$(CMAKE_COMMAND) -E touch_nocreate ThirdParty/boost/build/ios/prefix/lib/libboost_program_options.a

ThirdParty/boost/build/ios/prefix/lib/libboost_thread.a: ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a
	@$(CMAKE_COMMAND) -E touch_nocreate ThirdParty/boost/build/ios/prefix/lib/libboost_thread.a

build_boost: ThirdParty/CMakeFiles/build_boost
build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_filesystem.a
build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_system.a
build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_program_options.a
build_boost: ThirdParty/boost/build/ios/prefix/lib/libboost_thread.a
build_boost: ThirdParty/CMakeFiles/build_boost.dir/build.make

.PHONY : build_boost

# Rule to build all files generated by this target.
ThirdParty/CMakeFiles/build_boost.dir/build: build_boost

.PHONY : ThirdParty/CMakeFiles/build_boost.dir/build

ThirdParty/CMakeFiles/build_boost.dir/clean:
	cd /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty && $(CMAKE_COMMAND) -P CMakeFiles/build_boost.dir/cmake_clean.cmake
.PHONY : ThirdParty/CMakeFiles/build_boost.dir/clean

ThirdParty/CMakeFiles/build_boost.dir/depend:
	cd /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/ThirdParty /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty /Users/abilican/Documents/projects/perso/elastos/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/CMakeFiles/build_boost.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ThirdParty/CMakeFiles/build_boost.dir/depend

