# Install script for directory: /Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Submodules/sundials/src/sunmatrix/sparse

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("
Install SUNMATRIX_SPARSE
")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/cmake-build-debug/Submodules/PelePhysics/Submodules/sundials/src/sunmatrix/sparse/libsundials_sunmatrixsparse.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsundials_sunmatrixsparse.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsundials_sunmatrixsparse.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsundials_sunmatrixsparse.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/cmake-build-debug/Submodules/PelePhysics/Submodules/sundials/src/sunmatrix/sparse/libsundials_sunmatrixsparse.4.6.2.dylib"
    "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/cmake-build-debug/Submodules/PelePhysics/Submodules/sundials/src/sunmatrix/sparse/libsundials_sunmatrixsparse.4.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsundials_sunmatrixsparse.4.6.2.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsundials_sunmatrixsparse.4.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/Users/nolan/anaconda3/bin/install_name_tool"
        -id "/usr/local/lib/libsundials_sunmatrixsparse.4.dylib"
        "${file}")
      execute_process(COMMAND /Users/nolan/anaconda3/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/cmake-build-debug/Submodules/PelePhysics/Submodules/sundials/src/sunmatrix/sparse/libsundials_sunmatrixsparse.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sunmatrix" TYPE FILE FILES "/Users/nolan/Desktop/Research/PeleC-Builds/PeleC-Domain-Expansion-Fork/Submodules/PelePhysics/Submodules/sundials/include/sunmatrix/sunmatrix_sparse.h")
endif()

