//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/EffectRenderer.java
//
//  Created by Thomas on 7/1/13.
//

#import "Canvas.h"
#import "Rectangle.h"
#import "TextLayout.h"
#import "java/lang/Math.h"

@implementation TripleplayUtilEffectRenderer

static TripleplayUtilEffectRenderer * TripleplayUtilEffectRenderer_NONE_;

+ (TripleplayUtilEffectRenderer *)NONE {
  return TripleplayUtilEffectRenderer_NONE_;
}

- (float)adjustWidthWithFloat:(float)width {
  return width;
}

- (float)adjustHeightWithFloat:(float)height {
  return height;
}

- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout
                          withInt:(int)textColor
                         withBOOL:(BOOL)underlined
                        withFloat:(float)x
                        withFloat:(float)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayUtilEffectRenderer class]) {
    JreOperatorRetainedAssign(&TripleplayUtilEffectRenderer_NONE_, self, [[[TripleplayUtilEffectRenderer_$1 alloc] init] autorelease]);
  }
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation TripleplayUtilEffectRenderer_PixelOutline

@synthesize outlineColor = outlineColor_;

- (id)initWithInt:(int)outlineColor {
  if ((self = [super init])) {
    self.outlineColor = outlineColor;
  }
  return self;
}

- (float)adjustWidthWithFloat:(float)width {
  return width + 2;
}

- (float)adjustHeightWithFloat:(float)height {
  return height + 2;
}

- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)text
                          withInt:(int)textColor
                         withBOOL:(BOOL)underlined
                        withFloat:(float)x
                        withFloat:(float)y {
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) save];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:outlineColor_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 0 withFloat:y + 0];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 0 withFloat:y + 1];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 0 withFloat:y + 2];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 1 withFloat:y + 0];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 1 withFloat:y + 2];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 2 withFloat:y + 0];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 2 withFloat:y + 1];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 2 withFloat:y + 2];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + 1 withFloat:y + 1];
  if (underlined) {
    for (int ii = 0; ii < [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineCount]; ii++) {
      PythagorasFRectangle *bounds = [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineBoundsWithInt:ii];
      float sx = x + ((PythagorasFRectangle *) NIL_CHK(bounds)).x_ + 1;
      float sy = y + ((PythagorasFRectangle *) NIL_CHK(bounds)).y_ + [((PythagorasFRectangle *) NIL_CHK(bounds)) height];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:outlineColor_];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:sx - 1 withFloat:sy - 1 withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] + 3 withFloat:3];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:sx withFloat:sy withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] withFloat:1];
    }
  }
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) restore];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilEffectRenderer_PixelOutline *typedCopy = (TripleplayUtilEffectRenderer_PixelOutline *) copy;
  typedCopy.outlineColor = outlineColor_;
}

@end
@implementation TripleplayUtilEffectRenderer_VectorOutline

@synthesize outlineColor = outlineColor_;
@synthesize outlineWidth = outlineWidth_;
- (PlaynCoreCanvas_LineCapEnum *)outlineCap {
  return outlineCap_;
}
- (void)setOutlineCap:(PlaynCoreCanvas_LineCapEnum *)outlineCap {
  JreOperatorRetainedAssign(&outlineCap_, self, outlineCap);
}
@synthesize outlineCap = outlineCap_;
- (PlaynCoreCanvas_LineJoinEnum *)outlineJoin {
  return outlineJoin_;
}
- (void)setOutlineJoin:(PlaynCoreCanvas_LineJoinEnum *)outlineJoin {
  JreOperatorRetainedAssign(&outlineJoin_, self, outlineJoin);
}
@synthesize outlineJoin = outlineJoin_;

- (id)initWithInt:(int)outlineColor
        withFloat:(float)outlineWidth {
  return [self initTripleplayUtilEffectRenderer_VectorOutlineWithInt:outlineColor withFloat:outlineWidth withPlaynCoreCanvas_LineCapEnum:[PlaynCoreCanvas_LineCapEnum ROUND] withPlaynCoreCanvas_LineJoinEnum:[PlaynCoreCanvas_LineJoinEnum ROUND]];
}

- (id)initTripleplayUtilEffectRenderer_VectorOutlineWithInt:(int)outlineColor
                                                  withFloat:(float)outlineWidth
                            withPlaynCoreCanvas_LineCapEnum:(PlaynCoreCanvas_LineCapEnum *)cap
                           withPlaynCoreCanvas_LineJoinEnum:(PlaynCoreCanvas_LineJoinEnum *)join {
  if ((self = [super init])) {
    self.outlineColor = outlineColor;
    self.outlineWidth = outlineWidth;
    self.outlineCap = cap;
    self.outlineJoin = join;
  }
  return self;
}

- (id)initWithInt:(int)outlineColor
        withFloat:(float)outlineWidth
withPlaynCoreCanvas_LineCapEnum:(PlaynCoreCanvas_LineCapEnum *)cap
withPlaynCoreCanvas_LineJoinEnum:(PlaynCoreCanvas_LineJoinEnum *)join {
  return [self initTripleplayUtilEffectRenderer_VectorOutlineWithInt:outlineColor withFloat:outlineWidth withPlaynCoreCanvas_LineCapEnum:cap withPlaynCoreCanvas_LineJoinEnum:join];
}

- (float)adjustWidthWithFloat:(float)width {
  return width + 2 * outlineWidth_;
}

- (float)adjustHeightWithFloat:(float)height {
  return height + 2 * outlineWidth_;
}

- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)text
                          withInt:(int)textColor
                         withBOOL:(BOOL)underlined
                        withFloat:(float)x
                        withFloat:(float)y {
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) save];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setStrokeColorWithInt:outlineColor_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setStrokeWidthWithFloat:outlineWidth_ * 2];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setLineCapWithPlaynCoreCanvas_LineCapEnum:outlineCap_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setLineJoinWithPlaynCoreCanvas_LineJoinEnum:outlineJoin_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) strokeTextWithPlaynCoreTextLayout:text withFloat:x + outlineWidth_ withFloat:y + outlineWidth_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + outlineWidth_ withFloat:y + outlineWidth_];
  if (underlined) {
    for (int ii = 0; ii < [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineCount]; ii++) {
      PythagorasFRectangle *bounds = [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineBoundsWithInt:ii];
      float sx = x + ((PythagorasFRectangle *) NIL_CHK(bounds)).x_ + outlineWidth_;
      float sy = y + ((PythagorasFRectangle *) NIL_CHK(bounds)).y_ + [((PythagorasFRectangle *) NIL_CHK(bounds)) height] - 1 + outlineWidth_;
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) drawLineWithFloat:sx withFloat:sy withFloat:sx + [((PythagorasFRectangle *) NIL_CHK(bounds)) width] withFloat:sy];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:sx withFloat:sy withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] withFloat:1];
    }
  }
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) restore];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&outlineJoin_, self, nil);
  JreOperatorRetainedAssign(&outlineCap_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilEffectRenderer_VectorOutline *typedCopy = (TripleplayUtilEffectRenderer_VectorOutline *) copy;
  typedCopy.outlineColor = outlineColor_;
  typedCopy.outlineWidth = outlineWidth_;
  typedCopy.outlineCap = outlineCap_;
  typedCopy.outlineJoin = outlineJoin_;
}

@end
@implementation TripleplayUtilEffectRenderer_Shadow

@synthesize shadowColor = shadowColor_;
@synthesize shadowX = shadowX_;
@synthesize shadowY = shadowY_;

- (id)initWithInt:(int)shadowColor
        withFloat:(float)shadowX
        withFloat:(float)shadowY {
  if ((self = [super init])) {
    self.shadowColor = shadowColor;
    self.shadowX = shadowX;
    self.shadowY = shadowY;
  }
  return self;
}

- (float)adjustWidthWithFloat:(float)width {
  return width + [JavaLangMath absWithFloat:shadowX_];
}

- (float)adjustHeightWithFloat:(float)height {
  return height + [JavaLangMath absWithFloat:shadowY_];
}

- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)text
                          withInt:(int)textColor
                         withBOOL:(BOOL)underlined
                        withFloat:(float)x
                        withFloat:(float)y {
  float tx = (shadowX_ < 0) ? -shadowX_ : 0, ty = (shadowY_ < 0) ? -shadowY_ : 0;
  float sx = (shadowX_ < 0) ? 0 : shadowX_, sy = (shadowY_ < 0) ? 0 : shadowY_;
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) save];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:shadowColor_];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + sx withFloat:y + sy];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:text withFloat:x + tx withFloat:y + ty];
  if (underlined) {
    for (int ii = 0; ii < [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineCount]; ii++) {
      PythagorasFRectangle *bounds = [((id<PlaynCoreTextLayout>) NIL_CHK(text)) lineBoundsWithInt:ii];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:shadowColor_];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:sx + ((PythagorasFRectangle *) NIL_CHK(bounds)).x_ + x withFloat:sy + ((PythagorasFRectangle *) NIL_CHK(bounds)).y_ + [((PythagorasFRectangle *) NIL_CHK(bounds)) height] - 1 withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] + 1 withFloat:1];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:tx + ((PythagorasFRectangle *) NIL_CHK(bounds)).x_ + x withFloat:ty + ((PythagorasFRectangle *) NIL_CHK(bounds)).y_ + [((PythagorasFRectangle *) NIL_CHK(bounds)) height] - 1 withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] + 1 withFloat:1];
    }
  }
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) restore];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilEffectRenderer_Shadow *typedCopy = (TripleplayUtilEffectRenderer_Shadow *) copy;
  typedCopy.shadowColor = shadowColor_;
  typedCopy.shadowX = shadowX_;
  typedCopy.shadowY = shadowY_;
}

@end
@implementation TripleplayUtilEffectRenderer_$1

- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout
                          withInt:(int)textColor
                         withBOOL:(BOOL)underlined
                        withFloat:(float)x
                        withFloat:(float)y {
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) save];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setFillColorWithInt:textColor];
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillTextWithPlaynCoreTextLayout:layout withFloat:x withFloat:y];
  if (underlined) {
    (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) setStrokeColorWithInt:textColor];
    for (int ii = 0; ii < [((id<PlaynCoreTextLayout>) NIL_CHK(layout)) lineCount]; ii++) {
      PythagorasFRectangle *bounds = [((id<PlaynCoreTextLayout>) NIL_CHK(layout)) lineBoundsWithInt:ii];
      float sx = x + ((PythagorasFRectangle *) NIL_CHK(bounds)).x_;
      float sy = y + ((PythagorasFRectangle *) NIL_CHK(bounds)).y_ + [((PythagorasFRectangle *) NIL_CHK(bounds)) height] - 1;
      (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) fillRectWithFloat:sx withFloat:sy withFloat:[((PythagorasFRectangle *) NIL_CHK(bounds)) width] withFloat:1];
    }
  }
  (void) [((id<PlaynCoreCanvas>) NIL_CHK(canvas)) restore];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end