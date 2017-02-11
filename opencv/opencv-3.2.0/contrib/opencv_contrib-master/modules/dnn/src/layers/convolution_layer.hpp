/*M///////////////////////////////////////////////////////////////////////////////////////
//
//  IMPORTANT: READ BEFORE DOWNLOADING, COPYING, INSTALLING OR USING.
//
//  By downloading, copying, installing or using the software you agree to this license.
//  If you do not agree to this license, do not download, install,
//  copy or use the software.
//
//
//                           License Agreement
//                For Open Source Computer Vision Library
//
// Copyright (C) 2013, OpenCV Foundation, all rights reserved.
// Third party copyrights are property of their respective owners.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//   * Redistribution's of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//   * Redistribution's in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//   * The name of the copyright holders may not be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
// This software is provided by the copyright holders and contributors "as is" and
// any express or implied warranties, including, but not limited to, the implied
// warranties of merchantability and fitness for a particular purpose are disclaimed.
// In no event shall the Intel Corporation or contributors be liable for any direct,
// indirect, incidental, special, exemplary, or consequential damages
// (including, but not limited to, procurement of substitute goods or services;
// loss of use, data, or profits; or business interruption) however caused
// and on any theory of liability, whether in contract, strict liability,
// or tort (including negligence or otherwise) arising in any way out of
// the use of this software, even if advised of the possibility of such damage.
//
//M*/

#ifndef __OPENCV_DNN_LAYERS_CONVOLUTION_LAYER_HPP__
#define __OPENCV_DNN_LAYERS_CONVOLUTION_LAYER_HPP__
#include "../precomp.hpp"
#include <opencv2/dnn/all_layers.hpp>

namespace cv
{
namespace dnn
{

class BaseConvolutionLayerImpl : public ConvolutionLayer
{
public:
    BaseConvolutionLayerImpl();
    virtual void allocate(const std::vector<Blob*> &inputs, std::vector<Blob> &outputs);

protected:
    void init();
    virtual void computeInpOutShape(const Blob &inpBlob) = 0;
    bool is1x1() const;

    int numOutput, group;
    int inpH, inpW, inpCn;
    int outH, outW, outCn;
    int inpGroupCn, outGroupCn;
    int ksize;
    BlobShape colRowBlobShape;

    bool bias;
    bool tryUseOpenCL, useOpenCL;

    Blob colRowBlob, biasOnesBlob;

};

//TODO: simultaneously convolution and bias addition for cache optimization
class ConvolutionLayerImpl : public BaseConvolutionLayerImpl
{
public:
    virtual void forward(std::vector<Blob*> &inputs, std::vector<Blob> &outputs);

protected:
    virtual void computeInpOutShape(const Blob &inpBlob);

    template<typename XMat>
    void forward_(std::vector<Blob*> &inputs, std::vector<Blob> &outputs);
    void im2col(const  Mat &srcImg,  Mat &dstCol);
    void im2row(const  Mat &srcImg,  Mat &dstRow);
    void im2col(const UMat &srcImg, UMat &dstCol);
    void im2row(const UMat &srcImg, UMat &dstCol);
};

class DeConvolutionLayerImpl : public BaseConvolutionLayerImpl
{
public:
    virtual void forward(std::vector<Blob*> &inputs, std::vector<Blob> &outputs);

protected:

    virtual void computeInpOutShape(const Blob &inpBlob);

    template<typename XMat>
    void forward_(std::vector<Blob*> &inputs, std::vector<Blob> &outputs);
    void col2im(const  Mat &colMat, Mat  &dstImg);
    void col2im(const UMat &colMat, UMat &dstImg);
};

//Importers
Ptr<Layer> createConvolutionLayerFromCaffe(LayerParams &params);
Ptr<Layer> createDeconvolutionLayerFromCaffe(LayerParams &params);

}
}

#endif