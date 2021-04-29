//
//  OpenCVWrapper.m
//  OpenCVproject
//
//  Created by pitARa on 29/04/21.
//
#import <opencv2/opencv.hpp>
#import "OpenCVWrapper.h"
#import <opencv2/imgcodecs/ios.h>


@implementation OpenCVWrapper

//Here we can use C++ code

+ (NSString *)openCVVersionString {
return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

+(UIImage *) makeGrayFromImage:(UIImage *)image
{
    //Transform UIImage to cv::mat
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    //if the img was already gray,return it
    if (imageMat.channels() == 1) return image;
    //transform the cv::mat color image to gray
    cv::Mat grayMat;
    cv::cvtColor(imageMat, grayMat, cv::COLOR_BGR2GRAY);
    //transform graymat to uiimage and return
    return MatToUIImage(grayMat);
    
}

@end


