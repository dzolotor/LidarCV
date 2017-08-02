#include "opencv2/objdetect/objdetect.hpp"
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <raspicam/raspicam_cv.h>

#include <ctime>
#include <math.h>
#include <stdio.h>
//#include <curses.h>   
//#include </home/pi/vehicleRec/MSAC.h>

#include <algorithm>

#include <cstdlib>

#include <iostream>
#include <fstream>
#include <sstream>
#include <string> 

using namespace std;
using namespace cv;

//function defs
void detectAndDisplay(Mat frame, double centerX, double degPerPix, double angleFOV);
void laneMarkingsDetector(Mat &srcGRAY, Mat &dstGRAY, int tau);
void houghLines(Mat &grayFrame, int width, int height);

//vars
String cars_cascade_name = "cars.xml";
CascadeClassifier cars_cascade;
string window_name = "Vehicle Detection";
RNG rng(12345);


//main
int main(int argc, const char** argv) {
	
	//raspicam::RaspiCam Camera;
	//Camera.set( CV_CAP_PROP_FORMAT, CV_8UC1 );
	//cout<<"Opening Camera..."<<endl;
        //if (!Camera.open()) {
	//	cerr<<"Error opening the camera"<<endl;
	//	return -1;
	//}

	Mat vidStream;
	Mat lane;

	Mat vidOriginal;        // input image
	Mat vidGrayscale;       // grayscale of input image
	Mat vidBlurred;         // intermediate blured image
	Mat vidCanny;           // Canny edge image
	Mat vidThresh;

	int width = 0;
	int height = 0;

	//Load the vehicle cascade
	if (!cars_cascade.load(cars_cascade_name)) { return -1; }

	//Read the video stream

	VideoCapture capture(0);
	if (capture.isOpened()) {
		
		double dWidth = capture.get(CV_CAP_PROP_FRAME_WIDTH);
		double dHeight = capture.get(CV_CAP_PROP_FRAME_HEIGHT);
		double angleFOV = 62.2;

		width = (int)capture.get(CV_CAP_PROP_FRAME_WIDTH);
		height = (int)capture.get(CV_CAP_PROP_FRAME_HEIGHT);

		while (true) {
			capture.read(vidStream);
			capture.read(vidOriginal);
			//Apply the vehicle classifier to the frame
			if (!vidStream.empty()) {
				 
				int newWidth = width;
				int newHeight = height;
				double hyp = sqrt((newWidth*newWidth) + (newHeight*newHeight));
				double degPerPix = angleFOV / dWidth;
				double centerX = 320;
				
				cout << dWidth << " Pixs \n";
				 
				//resize(vidStream, vidStream, Size(newWidth, newHeight));
				//resize(vidOriginal, vidOriginal, Size(newWidth, newHeight));

				cv::Rect myROI(0, 50, newWidth, newHeight - 200);
				cv::Mat croppedStream = vidStream(myROI);
				//cv::Mat croppedOriginal = vidOriginal(myROI);
				//imshow("original", vidStream);
				
				detectAndDisplay(vidStream, centerX, degPerPix, angleFOV);
				
				//convert to canny (find edges/countours)
				//cvtColor(croppedOriginal, vidGrayscale, CV_BGR2GRAY);                   //convert to grayscale
				//GaussianBlur(vidGrayscale, vidBlurred, cv::Size(5, 5), 1.8);        //blur the grayscale image for before canny
				//Canny(vidBlurred, vidCanny, 50, 200);                         		//convert blurred to canny
																					//thresholding
				//laneMarkingsDetector(vidCanny, vidCanny, 5);
				//vidThresh = vidCanny;

				//draw lines on thresholded image with via hough
				//houghLines(vidCanny, width, height);

				//Display
				//imshow("Lanes and Vanishing Point", vidCanny);

			}
			else {
				printf("No captured frame\n"); break;
			}

			int c = waitKey(10);
			if ((char)c == 'c') { break; }
		}
	}
	cout << "NO VID!\n";
	return(0);
}

//functions

void detectAndDisplay(Mat frame, double centerX, double degPerPix, double angleFOV) {

	std::vector<Rect> cars;
	std::vector<int> angles;
	Mat frame_gray;
	std::ofstream outFile;
	std::ofstream inFile;
	double pixsFromCenter;
	double ang = 0;
	int iAngle;

	cvtColor(frame, frame_gray, CV_BGR2GRAY);
	equalizeHist(frame_gray, frame_gray);

	//Detect cars
	cars_cascade.detectMultiScale(frame_gray, cars, 1.1, 0.8, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));
	//1.1

	for (size_t i = 0; i < cars.size(); i++) {

		Point center(cars[i].x + cars[i].width*0.5, cars[i].y + cars[i].height*0.5);
		pixsFromCenter = cars[i].x + cars[i].width*0.5; //assuming correct
		ang = pixsFromCenter * degPerPix;
		//ang += angleFOV / 2.0;
		iAngle = int(ang);
		cout << "degPerPix = " << degPerPix << "\n";
		cout << "pixsFromCenter = " << pixsFromCenter << "\n";
		/*
		if(ang < 0){
			ang *= -1;
		}
		if(ang > 254){
			ang = 254;
		}*/
		std::cout << "angle = " << iAngle << '\n';
		angles.push_back(iAngle);
		ellipse(frame, center, Size(cars[i].width*0.5 / 20, cars[i].height*0.5) / 20, 0, 0, 360, Scalar(255, 0, 255), 4, 8, 0);

		std::ostringstream strs;
		strs << ang;
		std::string str = strs.str();

		putText(frame, str, center, FONT_HERSHEY_SCRIPT_SIMPLEX, 0.5, Scalar::all(255), 2, 8);

		/*
		Mat carROI = frame_gray(cars[i]);
		std::vector<Rect> tires;

		//-- In each car, detect tires
		tires.detectMultiScale(carROI, tires, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));

		for (size_t j = 0; j < tires.size(); j++)
		{
		Point center(cars[i].x + tires[j].x + tires[j].width*0.5, cars[i].y + tires[j].y + tires[j].height*0.5);
		int radius = cvRound((tires[j].width + tires[j].height)*0.25);
		circle(frame, center, radius, Scalar(255, 0, 0), 4, 8, 0);
		putText(frame,'OpenCV',(10,500), FONT_HERSHEY_SCRIPT_SIMPLEX, 4, (255,255,255) , 2 , cv2.LINE_AA)
		}
		*/
	}

	std::sort(angles.begin(), angles.end());

	//std::cout << "[";
	//for (unsigned int i = 0; i < angles.size(); i++) {
	//	std::cout << angles[i] << ", ";
	//}
	//std::cout << "]\n";

	
	for (int i = 0; i < angles.size(); i++) {
		if(angles[i] > 0){
			outFile.open("angles.txt");
			outFile << angles[i] << '\n';
			//std::cout << angles[i] << "\n";
		}
	}
	outFile.close();

	

	//Display
	imshow(window_name, frame);
}

/*CREDIT TO MARCOS NIETO for Thresholding*/
void laneMarkingsDetector(Mat &srcGRAY, Mat &dstGRAY, int tau) {

	//dstGRAY.setTo(0);

	int aux = 0;

	for (int j = 0; j < srcGRAY.rows; j++) {

		unsigned char *ptrRowSrc = srcGRAY.ptr<uchar>(j);
		unsigned char *ptrRowDst = dstGRAY.ptr<uchar>(j);

		for (int i = tau; i < srcGRAY.cols + tau; i++) {

			if (ptrRowSrc[i] != 0) {

				aux = 2 * ptrRowSrc[i];
				aux += -ptrRowSrc[i - tau];
				aux += -ptrRowSrc[i + tau];
				aux += -abs((int)(ptrRowSrc[i - tau] - ptrRowSrc[i + tau]));

				aux = (aux<0) ? (0) : (aux);
				aux = (aux>255) ? (255) : (aux);

				ptrRowDst[i] = (unsigned char)aux;
			}
		}
	}
}
/*
void houghLines(Mat &grayFrame, int width, int height) {

	cv::Size procSize;
	int procWidth = -1;
	int procHeight = -1;

	procWidth = width/2;

	// Resize	
	if (procWidth != -1)
	{

		procHeight = height*((double)procWidth / width/2);
		procSize = cv::Size(procWidth, procHeight);

		printf("Resize to: (%d x %d)\n", width / 2, height / 2);
	}
	else
		procSize = cv::Size(width/2, height/2);

	//MSAC
	MSAC msac;
	msac.init(MODE_NIETO, procSize, true);

	//standard hough transform
	int _houghMinLength = 70;

	vector<vector<cv::Point> > lineSegments;
	vector<cv::Point> aux;

	vector<Vec2f> lines;
	HoughLines(grayFrame, lines, 1, CV_PI / 180, _houghMinLength, 0, 0);
	
	for (size_t i = 0; i < lines.size(); i++) {

		float rho = lines[i][0];
		float theta = lines[i][1];

		double a = cos(theta);
		double b = sin(theta);
		double x0 = a*rho;
		double y0 = b*rho;

		Point pt1(cvRound(x0 + 1000 * (-b)), cvRound(y0 + 1000 * (a)));
		Point pt2(cvRound(x0 - 1000 * (-b)), cvRound(y0 - 1000 * (a)));

		cv::clipLine(grayFrame.size(), pt1, pt2);

		if (!grayFrame.empty()) {
			line(grayFrame, pt1, pt2, Scalar(255, 0, 255), 1, 8);
		}

		
		aux.clear();
		aux.push_back(pt1);
		aux.push_back(pt2);
		lineSegments.push_back(aux);

		//line(grayFrame, pt1, pt2, CV_RGB(0, 0, 0), 1, 8);
		
	}

	// Multiple vanishing points
	std::vector<cv::Mat> vps;			// vector of vps: vps[vpNum], with vpNum=0...numDetectedVps
	std::vector<std::vector<int> > CS;	// index of Consensus Set for all vps: CS[vpNum] is a vector containing indexes of lineSegments belonging to Consensus Set of vp numVp
	std::vector<int> numInliers;

	std::vector<std::vector<std::vector<cv::Point> > > lineSegmentsClusters;

	// Call msac function for multiple vanishing point estimation
	msac.multipleVPEstimation(lineSegments, lineSegmentsClusters, numInliers, vps, 1);
	for (int v = 0; v<vps.size(); v++)
	{
		printf("VP %d (%.3f, %.3f, %.3f)", v, vps[v].at<float>(0, 0), vps[v].at<float>(1, 0), vps[v].at<float>(2, 0));
		fflush(stdout);
		double vpNorm = cv::norm(vps[v]);
		if (fabs(vpNorm - 1) < 0.001)
		{
			printf("(INFINITE)");
			fflush(stdout);
		}
		printf("\n");
	}
	
	// Draw line segments according to t

*/