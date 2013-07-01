//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/CenteredImageBackground.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Float.h"
#import "playn/core/Image.h"
#import "playn/core/Surface.h"
#import "pythagoras/f/IDimension.h"
#import "pythagoras/f/MathUtil.h"
#import "tripleplay/ui/Background.h"

@implementation TripleplayUiBgsCenteredImageBackground

- (id<PlaynCoreImage>)_image {
  return _image_;
}
- (void)set_image:(id<PlaynCoreImage>)_image {
  JreOperatorRetainedAssign(&_image_, self, _image);
}
@synthesize _image = _image_;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_image_, self, image);
  }
  return self;
}

- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  float x = [PythagorasFMathUtil ifloorWithFloat:([((id<PythagorasFIDimension>) NIL_CHK(size)) width] - [((id<PlaynCoreImage>) NIL_CHK(_image_)) width]) / 2];
  float y = [PythagorasFMathUtil ifloorWithFloat:([((id<PythagorasFIDimension>) NIL_CHK(size)) height] - [((id<PlaynCoreImage>) NIL_CHK(_image_)) height]) / 2];
  return [[[TripleplayUiBackground_LayerInstance alloc] initWithTripleplayUiBackground:self withPythagorasFIDimension:size withPlaynCoreImmediateLayer_Renderer:[[[TripleplayUiBgsCenteredImageBackground_$1 alloc] initWithTripleplayUiBgsCenteredImageBackground:self withFloat:x withFloat:y] autorelease]] autorelease];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_image_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsCenteredImageBackground *typedCopy = (TripleplayUiBgsCenteredImageBackground *) copy;
  typedCopy._image = _image_;
}

@end
@implementation TripleplayUiBgsCenteredImageBackground_$1

- (TripleplayUiBgsCenteredImageBackground *)this$0 {
  return this$0_;
}
- (void)setThis$0:(TripleplayUiBgsCenteredImageBackground *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;
@synthesize val$x = val$x_;
@synthesize val$y = val$y_;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf {
  if (this$0_.alpha_ != nil) (void) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setAlphaWithFloat:[this$0_.alpha_ floatValue]];
  (void) [((id<PlaynCoreSurface>) NIL_CHK(surf)) drawImageWithPlaynCoreImage:this$0_._image withFloat:val$x_ withFloat:val$y_];
}

- (id)initWithTripleplayUiBgsCenteredImageBackground:(TripleplayUiBgsCenteredImageBackground *)outer$
                                           withFloat:(float)capture$0
                                           withFloat:(float)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
    val$x_ = capture$0;
    val$y_ = capture$1;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsCenteredImageBackground_$1 *typedCopy = (TripleplayUiBgsCenteredImageBackground_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$x = val$x_;
  typedCopy.val$y = val$y_;
}

@end