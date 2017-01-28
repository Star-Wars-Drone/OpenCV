# Install script for directory: /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include

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
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv" TYPE FILE FILES
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cv.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cv.hpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cvaux.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cvaux.hpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cvwimage.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cxcore.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cxcore.hpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cxeigen.hpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/cxmisc.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/highgui.h"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv/ml.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE FILES "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/include/opencv2/opencv.hpp")
endif()

