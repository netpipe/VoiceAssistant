# Install script for directory: /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/VoiceAssistant")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/libminizip.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip/minizip.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip/minizip.cmake"
         "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/Export/lib64/cmake/minizip/minizip.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip/minizip-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip/minizip.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip" TYPE FILE FILES "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/Export/lib64/cmake/minizip/minizip.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip" TYPE FILE FILES "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/Export/lib64/cmake/minizip/minizip-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/minizip" TYPE FILE FILES
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/minizip-config-version.cmake"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/minizip-config.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/minizip" TYPE FILE FILES
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_crypt.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_buf.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_mem.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_split.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_os.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip_rw.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_zlib.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_compat.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/ioapi.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/zip.h"
    "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/unzip.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/minizip.pc")
endif()

