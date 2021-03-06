#include <sstream>
#include <string>
#include <iostream>
#include <vector>
#include <highgui.h>
#include <cv.h>
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
//#include "opencv2/core/cv.hpp"

#define FRAME_HEIGHT 640
#define FRAME_WIDTH 480

int mouse_x = 0;
int mouse_y = 0;
float pixel_width,obj_width;
float focal_length = 1122;

using namespace std;
using namespace cv;

class TrackableObject
{
	public:
		void setxPos(int x);
		void setyPos(int y);
		int getxPos(void);
		int getyPos(void);
		void setTracking(bool b);
		bool isBeingTracked(void);

	private:
		int x_pos,y_pos;
		bool is_being_tracked;
};

void TrackableObject::setxPos(int x)
{
	TrackableObject::x_pos = x;
}

void TrackableObject::setyPos(int y)
{
	TrackableObject::y_pos = y;
}

int TrackableObject::getxPos(void)
{
	return TrackableObject::x_pos;
}

int TrackableObject::getyPos(void)
{
	return TrackableObject::y_pos;
}

void TrackableObject::setTracking(bool b)
{
	TrackableObject::is_being_tracked = b;
}

bool TrackableObject::isBeingTracked(void)
{
	return TrackableObject::is_being_tracked;
}


void CallBackFunc(int event,int x, int y, int flags, void* userdata)
{
	if(event == EVENT_LBUTTONDOWN)
	{
		mouse_x = x;
		mouse_y = y;
	}
}

string intToString(int number)
{
	std::stringstream ss;
	ss << number;
	return ss.str();
}

void drawObject(vector<TrackableObject> objects,Mat &frame)
{
	int x;
	int y;

	for(int i = 0 ; i<objects.size() ; i++)
	{

		x = objects.at(i).getxPos();
		y = objects.at(i).getyPos();
		cv::circle(frame,cv::Point(x,y),10,cv::Scalar(0,0,255));
		cv::putText(frame,intToString(x)+ " , " + intToString(y),cv::Point(x,y+20),1,1,Scalar(0,255,0));
		putText(frame,intToString(x)+","+intToString(y),Point(x,y+30),1,1,Scalar(0,255,0),2);
	}


}

int calibrateCamera(int pixel_width,int distance, int obj_width)
{
	return ((pixel_width * distance) / obj_width);
}

int distancefromObject(int obj_width,float focal_length,int pixel_width)
{
	return ((obj_width * focal_length) / pixel_width);
}

void trackObjects(int &x, int&y, Mat imgThresholded,Mat &frame)
{
	Mat temp;
	imgThresholded.copyTo(temp);
	int distance;

	Moments moment;

	vector<TrackableObject> objects;

	vector< vector<Point> > contours;
	vector<Vec4i> hierarchy;

	findContours(temp,contours,hierarchy,CV_RETR_CCOMP,CV_CHAIN_APPROX_SIMPLE);

	vector<vector<Point> > contours_poly(contours.size());
	vector<Rect>boundRect(contours.size());

	double refArea = 0;
	bool objectFound = false;
	int width = 0;
	Scalar color = Scalar(255,0,0);
	if(hierarchy.size() > 0)
	{
		int numObjects = hierarchy.size();
		if(numObjects<50)
		{
			for(int index = 0; index >= 0; index = hierarchy[index][0])
			{
				moment = moments((cv::Mat)contours[index]);
				double area = moment.m00;
				if(area>1600 && area<(640*480/1.5) && area>refArea)
				{
					//x = moment.m10/area;
					//y = moment.m01/area;
					TrackableObject obj;
					obj.setxPos(moment.m10/area);
					obj.setyPos(moment.m01/area);

					
					objects.push_back(obj);

					objectFound = true;
					refArea = area;
				}
				else
				{
					objectFound = false;
				}
			}
			for(int i = 0 ; i < contours.size(); i++)
			{
				approxPolyDP(Mat(contours[i]),contours_poly[i],3,true);
				boundRect[i] = boundingRect(Mat(contours_poly[i]));	
			}
			if(objectFound)
			{
				putText(frame,"Tracking Object",Point(0,50),2,1,Scalar(0,255,0),2);
				//drawObject(objects,frame);
				for( int i = 0 ; i < contours.size(); i++)
				{
					if(boundRect[i].width > 15)
					{
						width = boundRect[i].width;
						rectangle(frame,boundRect[i].tl(),boundRect[i].br(),color,21,8,0);
					}
				}
				//putText(frame,"Pixel Width " + intToString(width),Point(0,100),2,1,Scalar(0,0,255),2);
				pixel_width = width;
				distance = distancefromObject(4.25,focal_length,pixel_width);
				putText(frame,"Distance (inches) " + intToString(distance),Point(0,100),2,1,Scalar(0,0,255),2);
			}
			else
			{
				putText(frame,"Can't find Object.",Point(0,50),1,2,Scalar(0,0,255),2);
			}	
		}
	}
}


int main(int argc, char** argv[])
{
	cout << "Hello World!" << endl;
	VideoCapture cap("/dev/video0");
	//VideoCapture cap1("/dev/video2");
	cap.set(CV_CAP_PROP_FPS,15);

	int fps = cap.get(CAP_PROP_FPS);
        int width = cap.get(CAP_PROP_FRAME_WIDTH);
        int height = cap.get(CAP_PROP_FRAME_HEIGHT);

	int x = 0;
	int y = 0;
	int mouse_pos[2];
	
	if(!cap.isOpened())
	{	
		cout << "Cannot open the video feed." << endl;
		return -1;
	}

	namedWindow("MyCameraFeed",CV_WINDOW_AUTOSIZE);
	setMouseCallback("MyCameraFeed",CallBackFunc,NULL);

	int iLowH = 96;
	int iHighH = 115;

	int iLowS = 97;
	int iHighS = 255;

	int iLowV = 46;
	int iHighV = 255;

	cvCreateTrackbar("LowH", "MyCameraFeed",&iLowH,255);
	cvCreateTrackbar("HighH","MyCameraFeed",&iHighH,255);

	cvCreateTrackbar("LowS","MyCameraFeed",&iLowS,255);
	cvCreateTrackbar("HighS","MyCameraFeed",&iHighS,255);

	cvCreateTrackbar("LowV","MyCameraFeed",&iLowV,255);
	cvCreateTrackbar("HighV","MyCameraFeed",&iHighV,255);

	while(1)
	{
		Mat frame;
		//Mat frame1;
		bool bSuccess = cap.read(frame);
		//bSuccess = cap1.read(frame1);
		if(!bSuccess)
		{
			cout << "Failed to read from camera." << endl;
			break;
		}

		Mat imgHSV;
		cvtColor(frame,imgHSV,COLOR_BGR2HSV);
		Mat imgThresholded;
		inRange(imgHSV,Scalar(iLowH,iLowS,iLowV),Scalar(iHighH,iHighS,iHighV),imgThresholded);

		erode(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));
		dilate(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));

		dilate(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));
		erode(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));

		trackObjects(x,y,imgThresholded,frame);

		imshow("Thresholded Image",imgThresholded);
		imshow("MyCameraFeed",frame);
		//imshow("Camera2",frame1);
		

		if(waitKey(30) == 27)
		{
			cout << "Esc key was pressed." << endl;
			break;
		}
		if(waitKey(30) == 99)
		{
			focal_length = calibrateCamera(pixel_width,12,4.25);
			cout << "Camere calibrated." << endl;
			cout << focal_length << endl;
		}
	}

	return 0;

}
