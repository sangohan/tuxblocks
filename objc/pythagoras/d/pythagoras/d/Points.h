//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Points.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasDPoint;
@protocol PythagorasDIPoint;

#import "JreEmulation.h"

@interface PythagorasDPoints : NSObject {
}

+ (id<PythagorasDIPoint>)ZERO;
+ (double)distanceSqWithDouble:(double)x1
                    withDouble:(double)y1
                    withDouble:(double)x2
                    withDouble:(double)y2;
+ (double)distanceWithDouble:(double)x1
                  withDouble:(double)y1
                  withDouble:(double)x2
                  withDouble:(double)y2;
+ (BOOL)epsilonEqualsWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                     withPythagorasDIPoint:(id<PythagorasDIPoint>)p2;
+ (BOOL)epsilonEqualsWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                     withPythagorasDIPoint:(id<PythagorasDIPoint>)p2
                                withDouble:(double)epsilon;
+ (PythagorasDPoint *)transformWithDouble:(double)x
                               withDouble:(double)y
                               withDouble:(double)sx
                               withDouble:(double)sy
                               withDouble:(double)rotation
                               withDouble:(double)tx
                               withDouble:(double)ty
                     withPythagorasDPoint:(PythagorasDPoint *)result;
+ (PythagorasDPoint *)transformWithDouble:(double)x
                               withDouble:(double)y
                               withDouble:(double)sx
                               withDouble:(double)sy
                               withDouble:(double)sina
                               withDouble:(double)cosa
                               withDouble:(double)tx
                               withDouble:(double)ty
                     withPythagorasDPoint:(PythagorasDPoint *)result;
+ (PythagorasDPoint *)inverseTransformWithDouble:(double)x
                                      withDouble:(double)y
                                      withDouble:(double)sx
                                      withDouble:(double)sy
                                      withDouble:(double)rotation
                                      withDouble:(double)tx
                                      withDouble:(double)ty
                            withPythagorasDPoint:(PythagorasDPoint *)result;
+ (NSString *)pointToStringWithDouble:(double)x
                           withDouble:(double)y;
- (id)init;
@end