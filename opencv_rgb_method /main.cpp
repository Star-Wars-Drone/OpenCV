/*
 * main.cpp
 *
 *  Created on: Feb 6, 2017
 *      Author: Zach Johnston
 */

#include <cv.h>
#include <iostream>
#include <math.h>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

#define IMG_HEIGHT 1920
#define IMG_WIDTH 1080

using namespace cv;
using namespace std;

int main()
{
	VideoCapture cap("/dev/video0");
	cap.set(CV_CAP_PROP_FPS,10);
	if(!cap.isOpened())
	{
		cout << "Could not find device or image." << endl;
		return -1;
	}
	Mat image;
	//Mat image_red;
	int height;
	int width;
	int height_counter,width_counter;
	height_counter = 0;
	width_counter = 0;
	int r,g,b,i,nw,nh;
	nw = 0;
	nh = 0;
	int rp,bp,gp;
	int xcord,ycord;
	//imwrite("./images",image);
	namedWindow("Image",WINDOW_NORMAL);
	while(1)
	{
		cap >> image;
		for(height = 0 ; height < image.cols ; height++) 
		{
			if((r+g) < b && b > 75)
			{
				width_counter += height;
				nw++;
			}
			for(width = 0 ; width < image.rows ; width++)
			{
				b = image.at<cv::Vec3b>(width,height)[0]; //blue
				g = image.at<cv::Vec3b>(width,height)[1]; //green
				r = image.at<cv::Vec3b>(width,height)[2]; //red
				i = sqrt((r*r) + (b*b) + (g*g));
				//cout << "Intensity: " << i << endl;
				//cout << "Red: " << r << endl;
				//cout << "Blue: " << b << endl;
				//cout << "Green: " << g << endl;
				if(i != 0)
				{
					rp = (int) (r/i);
					bp = (int) (b/i);
					gp = (int) (g/i); 
				}
				if((r+g) < b && b > 100)
				{
					image.at<cv::Vec3b>(width,height)[0] = 255;
					image.at<cv::Vec3b>(width,height)[1] = 255;
					image.at<cv::Vec3b>(width,height)[2] = 255;
					height_counter += width;
					nh++;	
				}
				else
				{	
					image.at<cv::Vec3b>(width,height)[0] = 0;
					image.at<cv::Vec3b>(width,height)[1] = 0;
					image.at<cv::Vec3b>(width,height)[2] = 0;	
				} 
			}
		}
		if(nw != 0) xcord = width_counter / nw;
		if(nh != 0) ycord = height_counter / nh;
		circle(image,Point(xcord,ycord),32.0,Scalar(0,0,255),1,8);
		nw = 0;
		nh = 0;
		width_counter = 0;
		height_counter = 0;
		imshow("Image",image);
		if(waitKey(30) == 27) 
        	{ 
        		cout << "Esc key was pressed." << endl; 
                	return 0; 
        	}
	} 
}


