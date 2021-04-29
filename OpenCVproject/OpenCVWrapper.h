//
//  OpenCVWrapper.h
//  OpenCVproject
//
//  Created by pitARa on 29/04/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenCVWrapper : NSObject
//Define here interface with openCV

+ (NSString *)openCVVersionString;

+(UIImage *) makeGrayFromImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
