# Install script for directory: /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/lib/libspvsdk.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Data")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/IIdAgent.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/IIdChainSubWallet.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/IMainchainSubWallet.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/IMasterWallet.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/IMasterWalletManager.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/ISidechainSubWallet.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/ISubWallet.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/ISubWalletCallback.h"
    "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/MasterWalletManager.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/nlohmann" TYPE FILE FILES "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/Interface/nlohmann/json.hpp")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/ThirdParty/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/Core/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/SDK/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/Interface/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-ios/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
