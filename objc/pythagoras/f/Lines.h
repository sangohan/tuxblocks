//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Lines.java
//
//  Created by Thomas on 7/9/13.
//

#import "JreEmulation.h"

@interface PythagorasFLines : NSObject {
}

+ (BOOL)linesIntersectWithFloat:(float)x1
                      withFloat:(float)y1
                      withFloat:(float)x2
                      withFloat:(float)y2
                      withFloat:(float)x3
                      withFloat:(float)y3
                      withFloat:(float)x4
                      withFloat:(float)y4;
+ (BOOL)lineIntersectsRectWithFloat:(float)x1
                          withFloat:(float)y1
                          withFloat:(float)x2
                          withFloat:(float)y2
                          withFloat:(float)rx
                          withFloat:(float)ry
                          withFloat:(float)rw
                          withFloat:(float)rh;
+ (float)pointLineDistSqWithFloat:(float)px
                        withFloat:(float)py
                        withFloat:(float)x1
                        withFloat:(float)y1
                        withFloat:(float)x2
                        withFloat:(float)y2;
+ (float)pointLineDistWithFloat:(float)px
                      withFloat:(float)py
                      withFloat:(float)x1
                      withFloat:(float)y1
                      withFloat:(float)x2
                      withFloat:(float)y2;
+ (float)pointSegDistSqWithFloat:(float)px
                       withFloat:(float)py
                       withFloat:(float)x1
                       withFloat:(float)y1
                       withFloat:(float)x2
                       withFloat:(float)y2;
+ (float)pointSegDistWithFloat:(float)px
                     withFloat:(float)py
                     withFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)x2
                     withFloat:(float)y2;
+ (int)relativeCCWWithFloat:(float)px
                  withFloat:(float)py
                  withFloat:(float)x1
                  withFloat:(float)y1
                  withFloat:(float)x2
                  withFloat:(float)y2;
- (id)init;
@end