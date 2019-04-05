# Install script for directory: /Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/ThirdParty/fruit/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/simple_injection/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/hello_world/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/server/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/multibindings/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/scaling_doubles/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/annotated_injection/cmake_install.cmake")
  include("/Users/abilican/Documents/projects/perso/elastos/react-native-elastos-wallet-core/Elastos.ELA.SPV.Cpp/cmake-build-simulator64/ThirdParty/fruit/examples/testing/cmake_install.cmake")

endif()

