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
CMAKE_SOURCE_DIR = /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios

# Utility rule file for spvsdk_combin_static.

# Include the progress variables for this target.
include CMakeFiles/spvsdk_combin_static.dir/progress.make

CMakeFiles/spvsdk_combin_static: lib/libspvsdk.a


lib/libspvsdk.a: libspvsdk.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating a fat uber library..."
	/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Platforms/Scripts/combin_static_libraries.sh --libs=/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/libspvsdk.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/libsqlite.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/fruit/src/libfruit.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/SDK/WalletCore/libwalletcore.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost/build/ios/build/universal/libboost_thread.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost/build/ios/build/universal/libboost_program_options.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost/build/ios/build/universal/libboost_system.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/boost/build/ios/build/universal/libboost_filesystem.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/ThirdParty/openssl/OpenSSL-for-iPhone/lib/libcrypto.a,/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/ThirdParty/openssl/OpenSSL-for-iPhone/lib/libssl.a --archs=armv7,arm64 --system-name=Darwin --output-dir=/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/lib --output-filename=libspvsdk.a --libtool=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/libtool --ar-path=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar --ranlib-path=:

spvsdk_combin_static: CMakeFiles/spvsdk_combin_static
spvsdk_combin_static: lib/libspvsdk.a
spvsdk_combin_static: CMakeFiles/spvsdk_combin_static.dir/build.make

.PHONY : spvsdk_combin_static

# Rule to build all files generated by this target.
CMakeFiles/spvsdk_combin_static.dir/build: spvsdk_combin_static

.PHONY : CMakeFiles/spvsdk_combin_static.dir/build

CMakeFiles/spvsdk_combin_static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spvsdk_combin_static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spvsdk_combin_static.dir/clean

CMakeFiles/spvsdk_combin_static.dir/depend:
	cd /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/CMakeFiles/spvsdk_combin_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spvsdk_combin_static.dir/depend
