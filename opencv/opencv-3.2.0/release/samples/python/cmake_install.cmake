# Install script for directory: /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/python" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/_coverage.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/_doc.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/asift.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/browse.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/calibrate.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/camshift.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/coherence.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/color_histogram.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/common.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/contours.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/deconvolution.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/demo.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/dft.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/digits.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/digits_adjust.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/digits_video.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/distrans.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/edge.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/facedetect.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/feature_homography.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/find_obj.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/fitline.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/floodfill.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/gabor_threads.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/gaussian_mix.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/grabcut.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/hist.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/houghcircles.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/houghlines.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/inpaint.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/kalman.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/kmeans.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/lappyr.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/letter_recog.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/lk_homography.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/lk_track.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/logpolar.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/morphology.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/mosse.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/mouse_and_match.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/mser.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/opencv_version.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/opt_flow.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/peopledetect.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/plane_ar.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/plane_tracker.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/squares.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/stereo_match.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/texture_flow.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/tst_scene_render.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/turing.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/video.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/video_threaded.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/video_v4l2.py"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/python/watershed.py"
    )
endif()

