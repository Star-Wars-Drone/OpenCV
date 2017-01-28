# Install script for directory: /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/3calibration.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/autofocus.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/bgfg_segm.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/calibration.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/camshiftdemo.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/cloning_demo.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/cloning_gui.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/connected_components.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/contours2.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/convexhull.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/cout_mat.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/create_mask.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/dbt_face_detection.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/delaunay2.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/demhist.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/detect_blob.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/detect_mser.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/dft.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/distrans.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/drawing.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/edge.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/em.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/facedetect.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/facial_features.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/fback.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/ffilldemo.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/filestorage.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/filestorage_base64.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/fitellipse.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/grabcut.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/houghcircles.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/houghlines.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/image.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/image_alignment.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/image_sequence.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/imagelist_creator.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/inpaint.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/intelperc_capture.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/kalman.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/kmeans.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/laplace.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/letter_recog.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/lkdemo.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/logistic_regression.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/lsd_lines.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/mask_tmpl.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/matchmethod_orb_akaze_brisk.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/minarea.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/morphology2.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/neural_network.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/npr_demo.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/opencv_version.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/openni_capture.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/pca.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/peopledetect.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/phase_corr.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/points_classifier.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/polar_transforms.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/segment_objects.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/select3dobj.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/shape_example.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/smiledetect.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/squares.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/starter_imagelist.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/stereo_calib.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/stereo_match.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/stitching.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/stitching_detailed.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/train_HOG.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/train_svmsgd.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/tree_engine.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/tvl1_optical_flow.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/videocapture_basic.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/videocapture_starter.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/videostab.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/videowriter_basic.cpp"
    "/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/samples/cpp/watershed.cpp"
    )
endif()

