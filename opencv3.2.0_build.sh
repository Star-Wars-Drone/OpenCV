#!/bin/bash

clear

echo "This script build opencv3.2.0."
echo "Please make sure to run this as sudo. It may fail if you don't."

echo "Downloading libaries..."

apt-get install -y build-essential
apt-get install -y cmake
apt-get install -y pkg-config

apt-get install -y libpng12-0 
apt-get install -y libpng12-dev 
apt-get install -y libpng++-dev 
apt-get install -y libpng3 
apt-get install -y libpnglite-dev 
apt-get install -y zlib1g-dbg
apt-get install -y zlib1g 
apt-get install -y zlib1g-dev 
apt-get install -y pngtools 
apt-get install -y libjasper1 
apt-get install -y libjasper-dev 
apt-get install -y libjasper-runtime 
apt-get install -y libjpeg62 
apt-get install -y libjpeg-progs 
apt-get install -y libjpeg62-dev 
apt-get install -y libtiff5 
apt-get install -y libtiff5-dev 
apt-get install -y ffmpeg 
apt-get install -y libavformat-dev 
apt-get install -y libswscale-dev 
apt-get install -y openexr 
apt-get install -y libopenexr-dev 
apt-get install -y libopenexr6 
apt-get install -y libgstreamer0.10-0-dbg 
apt-get install -y libgstreamer0.10-0 
apt-get install -y libgstreamer0.10-dev 
apt-get install -y libgstreamer-plugins-base0.10-dev 
apt-get install -y libxine2-dev 
apt-get install -y libxine2-ffmpeg 
apt-get install -y libunicap2 
apt-get install -y libunicap2-dev 
apt-get install -y libdc1394-22-dev 
apt-get install -y libdc1394-22 
apt-get install -y libdc1394-utils 
apt-get install -y libv4l-0 
apt-get install -y libv4l-dev 
apt-get install -y libtbb-dev
apt-get install -y libgtk2.0-dev 

echo "Making opencv3.2.0 directory..."
mkdir /media/linaro/OpenCV/OpenCV/opencv
cd /media/linaro/OpenCV/OpenCV/opencv

echo "Downloading opencv source code..."
wget https://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.2.0/opencv-3.2.0.zip
echo "Extracting source code..."
unzip opencv-3.2.0.zip
cd opencv-3.2.0
echo "Making release directory..."
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_ZLIB=ON -D BUILD_PYTHON_SUPPORT=ON /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0
echo "Building opencv-3.2.0..."
make



