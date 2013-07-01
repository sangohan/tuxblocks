//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IRectangularShape.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasFPoint;
@class PythagorasFRectangle;

#import "JreEmulation.h"
#import "pythagoras/f/IShape.h"

@protocol PythagorasFIRectangularShape < PythagorasFIShape, NSObject >
- (float)x;
- (float)y;
- (float)width;
- (float)height;
- (PythagorasFPoint *)min;
- (float)minX;
- (float)minY;
- (PythagorasFPoint *)max;
- (float)maxX;
- (float)maxY;
- (PythagorasFPoint *)center;
- (float)centerX;
- (float)centerY;
- (PythagorasFRectangle *)frame;
- (PythagorasFRectangle *)frameWithPythagorasFRectangle:(PythagorasFRectangle *)target;
@end