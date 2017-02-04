#include "mainwindow.h"
#include <QApplication>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

int mouse_x = 0;
int mouse_y = 0;

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

void trackObjects(int &x, int&y, Mat imgThresholded,Mat &frame)
{
    Mat temp;
    imgThresholded.copyTo(temp);

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
                putText(frame,"Pixel Width " + intToString(width),Point(0,100),2,1,Scalar(0,0,255),2);

            }
            else
            {
                putText(frame,"Can't find Object.",Point(0,50),1,2,Scalar(0,0,255),2);
            }
        }
    }
}

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    //VideoCapture cap("udpsrc port=5000 ! application/x-rtp, encoding-name=H264,payload=96 ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! appsink");
    //cout << "Test" << endl;
    VideoCapture cap;
    cap.set(CAP_PROP_FRAME_WIDTH,720);
    cap.set(CAP_PROP_FRAME_HEIGHT,576);
    //cap.set(CAP_FFMPEG,1);
    cap.set(CAP_PROP_FPS,30);
    cap.open("/dev/video0");
    //cap.set(CAP_PROP_MODE,2);
    cout << "TEST" << endl;
    //cap.set(CV_CAP_PROP_FPS,15);
//	int fps = cap.get(CAP_PROP_FPS);
//	int width = cap.get(CAP_PROP_FRAME_WIDTH);
//	int height = cap.get(CAP_PROP_FRAME_HEIGHT);
    int keep_alive = 0;
    Mat frame;
    Mat imgHSV;
    Mat imgThresholded;

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
        bool bSuccess = cap.read(frame);
        if(!bSuccess)
        {
            cout << "Failed to read from camera." << endl;
            break;
        }
        cvtColor(frame,imgHSV,COLOR_BGR2HSV);
        inRange(imgHSV,Scalar(iLowH,iLowS,iLowV),Scalar(iHighH,iHighS,iHighV),imgThresholded);

        erode(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));
        dilate(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));

        dilate(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));
        erode(imgThresholded,imgThresholded,getStructuringElement(MORPH_RECT,Size(5,5)));

        trackObjects(x,y,imgThresholded,frame);
        if(keep_alive == 50)
        {
            cout << "The loop is still running..." << endl;
            keep_alive = 0;
        }

        imshow("Thresholded Image",imgThresholded);
        imshow("MyCameraFeed",frame);


        if(waitKey(30) == 27)
        {
            cout << "Esc key was pressed." << endl;
            destroyAllWindows();
            w.close();
            destroyAllWindows();
            break;
        }
        keep_alive++;
    }

    return 0;
}
