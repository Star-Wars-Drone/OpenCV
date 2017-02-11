#include "opencv2/calib3d.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/core/utility.hpp"
#include "opencv2/ximgproc/disparity_filter.hpp"
#include <iostream>
#include <string>

using namespace cv;
using namespace cv::ximgproc;
using namespace std;

int max_disp = 160;
int wsize = 15;
double filtering_time,matching_time;
double lambda = 8000;
double sigma = 1.5;
double vis_mult = 1;
Ptr<DisparityWLSFilter> wls_filter;
Mat left_for_matcher, right_for_matcher;
Mat left_disp,right_disp;
Mat filtered_disp;


int main()
{
	startover:
	VideoCapture camera_l("/dev/video0");
	VideoCapture camera_r("/dev/video2");
	camera_l.set(CV_CAP_PROP_FPS,24);
	camera_r.set(CV_CAP_PROP_FPS,24);
	Mat left,right;
	while(1)
	{
		camera_l.read(left);
		if(left.empty())
		{
			cout << "Cannot read image." << endl;
			goto startover;
			return -1;
		}
		camera_r.read(right);
		if(right.empty())
		{
			cout << "Cannot read image." << endl;
			return -1;
		}	
		max_disp/=2;
		if(max_disp%16!=0)
		{
			max_disp += 16-(max_disp%16);
		}
		resize(left ,left_for_matcher ,Size(),0.5,0.5);
		resize(right,right_for_matcher,Size(),0.5,0.5);

		Ptr<StereoBM> left_matcher = StereoBM::create(max_disp,wsize);
		wls_filter = createDisparityWLSFilter(left_matcher);
		Ptr<StereoMatcher> right_matcher = createRightMatcher(left_matcher);
		cvtColor(left_for_matcher,  left_for_matcher,  COLOR_BGR2GRAY);
		cvtColor(right_for_matcher, right_for_matcher, COLOR_BGR2GRAY);
		matching_time = (double)getTickCount();
		left_matcher-> compute(left_for_matcher, right_for_matcher,left_disp);
		right_matcher->compute(right_for_matcher,left_for_matcher, right_disp);
		matching_time = ((double)getTickCount() - matching_time)/getTickFrequency();

		wls_filter->setLambda(lambda);
		wls_filter->setSigmaColor(sigma);
		filtering_time = (double)getTickCount();
		wls_filter->filter(left_disp,left,filtered_disp,right_disp);
		filtering_time = ((double)getTickCount() - filtering_time)/getTickFrequency();

		Mat raw_disp_vis;
		getDisparityVis(left_disp,raw_disp_vis,vis_mult);
		namedWindow("raw disparity", WINDOW_AUTOSIZE);
		imshow("raw disparity", raw_disp_vis);
		Mat filtered_disp_vis;
		getDisparityVis(filtered_disp,filtered_disp_vis,vis_mult);
		namedWindow("filtered disparity", WINDOW_AUTOSIZE);
		imshow("filtered disparity", filtered_disp_vis);
		imshow("Camera Right",right);
		imshow("Camera Left",left);
		if(waitKey(30) == 27) break;
	}
	
	return 0;
}
