//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AffineTransform.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSFloatArray;
@class IOSObjectArray;
@class PythagorasFPoint;
@class PythagorasFVector;
@protocol PythagorasFIPoint;
@protocol PythagorasFIVector;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "pythagoras/f/AbstractTransform.h"

#define PythagorasFAffineTransform_GENERALITY 4

@interface PythagorasFAffineTransform : PythagorasFAbstractTransform {
 @public
  float m00_, m01_, m10_, m11_;
  float tx__, ty__;
}

@property (nonatomic, assign) float m00;
@property (nonatomic, assign) float m01;
@property (nonatomic, assign) float m10;
@property (nonatomic, assign) float m11;
@property (nonatomic, assign) float tx_;
@property (nonatomic, assign) float ty_;

+ (int)GENERALITY;
- (id)init;
- (id)initWithFloat:(float)scale_
          withFloat:(float)angle
          withFloat:(float)tx
          withFloat:(float)ty;
- (id)initWithFloat:(float)scaleX
          withFloat:(float)scaleY
          withFloat:(float)angle
          withFloat:(float)tx
          withFloat:(float)ty;
- (id)initWithFloat:(float)m00
          withFloat:(float)m01
          withFloat:(float)m10
          withFloat:(float)m11
          withFloat:(float)tx
          withFloat:(float)ty;
- (float)uniformScale;
- (float)scaleX;
- (float)scaleY;
- (float)rotation;
- (float)tx;
- (float)ty;
- (void)getWithJavaLangFloatArray:(IOSFloatArray *)matrix;
- (id<PythagorasFTransform>)setUniformScaleWithFloat:(float)scale_;
- (id<PythagorasFTransform>)setScaleXWithFloat:(float)scaleX;
- (id<PythagorasFTransform>)setScaleYWithFloat:(float)scaleY;
- (id<PythagorasFTransform>)setRotationWithFloat:(float)angle;
- (id<PythagorasFTransform>)setTranslationWithFloat:(float)tx
                                          withFloat:(float)ty;
- (id<PythagorasFTransform>)setTxWithFloat:(float)tx;
- (id<PythagorasFTransform>)setTyWithFloat:(float)ty;
- (id<PythagorasFTransform>)setTransformWithFloat:(float)m00
                                        withFloat:(float)m01
                                        withFloat:(float)m10
                                        withFloat:(float)m11
                                        withFloat:(float)tx
                                        withFloat:(float)ty;
- (id<PythagorasFTransform>)uniformScaleWithFloat:(float)scale_;
- (id<PythagorasFTransform>)scale__WithFloat:(float)scaleX
                                   withFloat:(float)scaleY;
- (id<PythagorasFTransform>)scaleXWithFloat:(float)scaleX;
- (id<PythagorasFTransform>)scaleYWithFloat:(float)scaleY;
- (id<PythagorasFTransform>)rotateWithFloat:(float)angle;
- (id<PythagorasFTransform>)translateWithFloat:(float)tx
                                     withFloat:(float)ty;
- (id<PythagorasFTransform>)translateXWithFloat:(float)tx;
- (id<PythagorasFTransform>)translateYWithFloat:(float)ty;
- (id<PythagorasFTransform>)shearWithFloat:(float)sx
                                 withFloat:(float)sy;
- (id<PythagorasFTransform>)shearXWithFloat:(float)sx;
- (id<PythagorasFTransform>)shearYWithFloat:(float)sy;
- (id<PythagorasFTransform>)invert;
- (id<PythagorasFTransform>)concatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other;
- (id<PythagorasFTransform>)preConcatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other;
- (id<PythagorasFTransform>)lerpWithPythagorasFTransform:(id<PythagorasFTransform>)other
                                               withFloat:(float)t;
- (PythagorasFPoint *)transformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                withPythagorasFPoint:(PythagorasFPoint *)into;
- (void)transformWithPythagorasFIPointArray:(IOSObjectArray *)src
                                    withInt:(int)srcOff
                  withPythagorasFPointArray:(IOSObjectArray *)dst
                                    withInt:(int)dstOff
                                    withInt:(int)count;
- (void)transformWithJavaLangFloatArray:(IOSFloatArray *)src
                                withInt:(int)srcOff
                 withJavaLangFloatArray:(IOSFloatArray *)dst
                                withInt:(int)dstOff
                                withInt:(int)count;
- (PythagorasFPoint *)inverseTransformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                       withPythagorasFPoint:(PythagorasFPoint *)into;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                      withPythagorasFVector:(PythagorasFVector *)into;
- (PythagorasFVector *)transformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                 withPythagorasFVector:(PythagorasFVector *)into;
- (PythagorasFVector *)inverseTransformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                        withPythagorasFVector:(PythagorasFVector *)into;
- (id<PythagorasFTransform>)copy__ OBJC_METHOD_FAMILY_NONE;
- (int)generality;
- (NSString *)description;
- (id)initWithPythagorasFTransform:(id<PythagorasFTransform>)other;
@end