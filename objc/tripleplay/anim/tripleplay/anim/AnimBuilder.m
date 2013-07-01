//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/AnimBuilder.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Integer.h"
#import "java/lang/Runnable.h"
#import "playn/core/Asserts.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Sound.h"
#import "pythagoras/f/XY.h"
#import "react/Value.h"
#import "tripleplay/anim/Animation.h"
#import "tripleplay/anim/Flipbook.h"
#import "tripleplay/sound/Playable.h"
#import "tripleplay/util/Layers.h"

@implementation TripleplayAnimAnimBuilder

- (id)addWithId:(TripleplayAnimAnimation *)anim {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (TripleplayAnimAnimation_Two *)tweenTranslationWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self tweenXYWithPlaynCoreLayer:layer];
}

- (TripleplayAnimAnimation_Two *)tweenXYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return ((TripleplayAnimAnimation_Two *) [self addWithId:[[[TripleplayAnimAnimation_Two alloc] initWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onXWithPlaynCoreLayer:layer] withTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onYWithPlaynCoreLayer:layer]] autorelease]]);
}

- (TripleplayAnimAnimation_One *)tweenXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self tweenWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onXWithPlaynCoreLayer:layer]];
}

- (TripleplayAnimAnimation_One *)tweenYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self tweenWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onYWithPlaynCoreLayer:layer]];
}

- (TripleplayAnimAnimation_One *)tweenRotationWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [self tweenWithTripleplayAnimAnimation_Value:[[[TripleplayAnimAnimBuilder_$1 alloc] initWithPlaynCoreLayer:layer] autorelease]];
}

- (TripleplayAnimAnimation_One *)tweenScaleWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [self tweenWithTripleplayAnimAnimation_Value:[[[TripleplayAnimAnimBuilder_$2 alloc] initWithPlaynCoreLayer:layer] autorelease]];
}

- (TripleplayAnimAnimation_Two *)tweenScaleXYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return ((TripleplayAnimAnimation_Two *) [self addWithId:[[[TripleplayAnimAnimation_Two alloc] initWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onScaleXWithPlaynCoreLayer:layer] withTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onScaleYWithPlaynCoreLayer:layer]] autorelease]]);
}

- (TripleplayAnimAnimation_One *)tweenScaleXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self tweenWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onScaleXWithPlaynCoreLayer:layer]];
}

- (TripleplayAnimAnimation_One *)tweenScaleYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self tweenWithTripleplayAnimAnimation_Value:[TripleplayAnimAnimBuilder onScaleYWithPlaynCoreLayer:layer]];
}

- (TripleplayAnimAnimation_One *)tweenAlphaWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [self tweenWithTripleplayAnimAnimation_Value:[[[TripleplayAnimAnimBuilder_$3 alloc] initWithPlaynCoreLayer:layer] autorelease]];
}

- (TripleplayAnimAnimation_One *)tweenWithTripleplayAnimAnimation_Value:(id<TripleplayAnimAnimation_Value>)value {
  return ((TripleplayAnimAnimation_One *) [self addWithId:[[[TripleplayAnimAnimation_One alloc] initWithTripleplayAnimAnimation_Value:value] autorelease]]);
}

- (TripleplayAnimAnimation_Flip *)flipbookWithPlaynCoreImageLayer:(id<PlaynCoreImageLayer>)layer
                                       withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book {
  return ((TripleplayAnimAnimation_Flip *) [self addWithId:[[[TripleplayAnimAnimation_Flip alloc] initWithPlaynCoreImageLayer:layer withTripleplayAnimFlipbook:book] autorelease]]);
}

- (TripleplayAnimAnimation_Flip *)flipbookWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)box
                                       withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book {
  id<PlaynCoreImageLayer> image = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImageLayer];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(box)) addWithPlaynCoreLayer:image];
  return [self flipbookWithPlaynCoreImageLayer:image withTripleplayAnimFlipbook:book];
}

- (TripleplayAnimAnimation *)flipbookAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                                     withFloat:(float)x
                                                     withFloat:(float)y
                                    withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book {
  id<PlaynCoreGroupLayer> box = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createGroupLayer];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(box)) setTranslationWithFloat:x withFloat:y];
  return [[[[[self addWithPlaynCoreGroupLayer:parent withPlaynCoreLayer:box] then] flipbookWithPlaynCoreGroupLayer:box withTripleplayAnimFlipbook:book] then] destroyWithPlaynCoreLayer:box];
}

- (TripleplayAnimAnimation *)flipbookAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                             withPythagorasFXY:(id<PythagorasFXY>)pos
                                    withTripleplayAnimFlipbook:(TripleplayAnimFlipbook *)book {
  return [self flipbookAtWithPlaynCoreGroupLayer:parent withFloat:[((id<PythagorasFXY>) NIL_CHK(pos)) x] withFloat:[((id<PythagorasFXY>) NIL_CHK(pos)) y] withTripleplayAnimFlipbook:book];
}

- (TripleplayAnimAnimation_Shake *)shakeWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return ((TripleplayAnimAnimation_Shake *) [self addWithId:[[[TripleplayAnimAnimation_Shake alloc] initWithPlaynCoreLayer:layer] autorelease]]);
}

- (TripleplayAnimAnimation_Delay *)delayWithFloat:(float)duration {
  return ((TripleplayAnimAnimation_Delay *) [self addWithId:[[[TripleplayAnimAnimation_Delay alloc] initWithFloat:duration] autorelease]]);
}

- (TripleplayAnimAnimBuilder *)repeatWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [((TripleplayAnimAnimation_Repeat *) [self addWithId:[[[TripleplayAnimAnimation_Repeat alloc] initWithPlaynCoreLayer:layer] autorelease]]) then];
}

- (TripleplayAnimAnimation_Action *)actionWithJavaLangRunnable:(id<JavaLangRunnable>)action {
  return ((TripleplayAnimAnimation_Action *) [self addWithId:[[[TripleplayAnimAnimation_Action alloc] initWithJavaLangRunnable:action] autorelease]]);
}

- (TripleplayAnimAnimation_Action *)addWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                            withPlaynCoreLayer:(id<PlaynCoreLayer>)child {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$4 alloc] initWithPlaynCoreGroupLayer:parent withPlaynCoreLayer:child] autorelease]];
}

- (TripleplayAnimAnimation_Action *)addAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                              withPlaynCoreLayer:(id<PlaynCoreLayer>)child
                                               withPythagorasFXY:(id<PythagorasFXY>)pos {
  return [self addAtWithPlaynCoreGroupLayer:parent withPlaynCoreLayer:child withFloat:[((id<PythagorasFXY>) NIL_CHK(pos)) x] withFloat:[((id<PythagorasFXY>) NIL_CHK(pos)) y]];
}

- (TripleplayAnimAnimation_Action *)addAtWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                                              withPlaynCoreLayer:(id<PlaynCoreLayer>)child
                                                       withFloat:(float)x
                                                       withFloat:(float)y {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$5 alloc] initWithPlaynCoreGroupLayer:parent withPlaynCoreLayer:child withFloat:x withFloat:y] autorelease]];
}

- (TripleplayAnimAnimation_Action *)reparentWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)newParent
                                                 withPlaynCoreLayer:(id<PlaynCoreLayer>)child {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$6 alloc] initWithPlaynCoreLayer:child withPlaynCoreGroupLayer:newParent] autorelease]];
}

- (TripleplayAnimAnimation_Action *)destroyWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$7 alloc] initWithPlaynCoreLayer:layer] autorelease]];
}

- (TripleplayAnimAnimation_Action *)setDepthWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                                     withFloat:(float)depth {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$8 alloc] initWithPlaynCoreLayer:layer withFloat:depth] autorelease]];
}

- (TripleplayAnimAnimation_Action *)setVisibleWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                                        withBOOL:(BOOL)visible {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$9 alloc] initWithPlaynCoreLayer:layer withBOOL:visible] autorelease]];
}

- (TripleplayAnimAnimation_Action *)playWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$10 alloc] initWithTripleplaySoundPlayable:sound] autorelease]];
}

- (TripleplayAnimAnimation_Action *)stopWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$11 alloc] initWithTripleplaySoundPlayable:sound] autorelease]];
}

- (TripleplayAnimAnimation_Action *)playWithPlaynCoreSound:(id<PlaynCoreSound>)sound {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$12 alloc] initWithPlaynCoreSound:sound] autorelease]];
}

- (TripleplayAnimAnimation_One *)tweenVolumeWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)sound {
  (void) [PlaynCoreAsserts checkNotNullWithId:sound];
  return [self tweenWithTripleplayAnimAnimation_Value:[[[TripleplayAnimAnimBuilder_$13 alloc] initWithTripleplaySoundPlayable:sound] autorelease]];
}

- (TripleplayAnimAnimation_One *)tweenVolumeWithPlaynCoreSound:(id<PlaynCoreSound>)sound {
  (void) [PlaynCoreAsserts checkNotNullWithId:sound];
  return [self tweenWithTripleplayAnimAnimation_Value:[[[TripleplayAnimAnimBuilder_$14 alloc] initWithPlaynCoreSound:sound] autorelease]];
}

- (TripleplayAnimAnimation_Action *)stopWithPlaynCoreSound:(id<PlaynCoreSound>)sound {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$15 alloc] initWithPlaynCoreSound:sound] autorelease]];
}

- (TripleplayAnimAnimation_Action *)setValueWithReactValue:(ReactValue *)value
                                                    withId:(id)newValue {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$16 alloc] initWithReactValue:value withId:newValue] autorelease]];
}

- (TripleplayAnimAnimation_Action *)incrementWithReactValue:(ReactValue *)value
                                                    withInt:(int)amount {
  return [self actionWithJavaLangRunnable:[[[TripleplayAnimAnimBuilder_$17 alloc] initWithReactValue:value withInt:amount] autorelease]];
}

+ (id<TripleplayAnimAnimation_Value>)onXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [[[TripleplayAnimAnimBuilder_$18 alloc] initWithPlaynCoreLayer:layer] autorelease];
}

+ (id<TripleplayAnimAnimation_Value>)onYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [[[TripleplayAnimAnimBuilder_$19 alloc] initWithPlaynCoreLayer:layer] autorelease];
}

+ (id<TripleplayAnimAnimation_Value>)onScaleXWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [[[TripleplayAnimAnimBuilder_$20 alloc] initWithPlaynCoreLayer:layer] autorelease];
}

+ (id<TripleplayAnimAnimation_Value>)onScaleYWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  (void) [PlaynCoreAsserts checkNotNullWithId:layer];
  return [[[TripleplayAnimAnimBuilder_$21 alloc] initWithPlaynCoreLayer:layer] autorelease];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation TripleplayAnimAnimBuilder_$1

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) rotation];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setRotationWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$1 *typedCopy = (TripleplayAnimAnimBuilder_$1 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$2

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) scaleX];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setScaleWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$2 *typedCopy = (TripleplayAnimAnimBuilder_$2 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$3

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) alpha];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setAlphaWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$3 *typedCopy = (TripleplayAnimAnimBuilder_$3 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$4

- (id<PlaynCoreGroupLayer>)val$parent {
  return val$parent_;
}
- (void)setVal$parent:(id<PlaynCoreGroupLayer>)val$parent {
  JreOperatorRetainedAssign(&val$parent_, self, val$parent);
}
@synthesize val$parent = val$parent_;
- (id<PlaynCoreLayer>)val$child {
  return val$child_;
}
- (void)setVal$child:(id<PlaynCoreLayer>)val$child {
  JreOperatorRetainedAssign(&val$child_, self, val$child);
}
@synthesize val$child = val$child_;

- (void)run {
  [((id<PlaynCoreGroupLayer>) NIL_CHK(val$parent_)) addWithPlaynCoreLayer:val$child_];
}

- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$0
               withPlaynCoreLayer:(id<PlaynCoreLayer>)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$parent_, self, capture$0);
    JreOperatorRetainedAssign(&val$child_, self, capture$1);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$child_, self, nil);
  JreOperatorRetainedAssign(&val$parent_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$4 *typedCopy = (TripleplayAnimAnimBuilder_$4 *) copy;
  typedCopy.val$parent = val$parent_;
  typedCopy.val$child = val$child_;
}

@end
@implementation TripleplayAnimAnimBuilder_$5

- (id<PlaynCoreGroupLayer>)val$parent {
  return val$parent_;
}
- (void)setVal$parent:(id<PlaynCoreGroupLayer>)val$parent {
  JreOperatorRetainedAssign(&val$parent_, self, val$parent);
}
@synthesize val$parent = val$parent_;
- (id<PlaynCoreLayer>)val$child {
  return val$child_;
}
- (void)setVal$child:(id<PlaynCoreLayer>)val$child {
  JreOperatorRetainedAssign(&val$child_, self, val$child);
}
@synthesize val$child = val$child_;
@synthesize val$x = val$x_;
@synthesize val$y = val$y_;

- (void)run {
  [((id<PlaynCoreGroupLayer>) NIL_CHK(val$parent_)) addAtWithPlaynCoreLayer:val$child_ withFloat:val$x_ withFloat:val$y_];
}

- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$0
               withPlaynCoreLayer:(id<PlaynCoreLayer>)capture$1
                        withFloat:(float)capture$2
                        withFloat:(float)capture$3 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$parent_, self, capture$0);
    JreOperatorRetainedAssign(&val$child_, self, capture$1);
    val$x_ = capture$2;
    val$y_ = capture$3;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$child_, self, nil);
  JreOperatorRetainedAssign(&val$parent_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$5 *typedCopy = (TripleplayAnimAnimBuilder_$5 *) copy;
  typedCopy.val$parent = val$parent_;
  typedCopy.val$child = val$child_;
  typedCopy.val$x = val$x_;
  typedCopy.val$y = val$y_;
}

@end
@implementation TripleplayAnimAnimBuilder_$6

- (id<PlaynCoreLayer>)val$child {
  return val$child_;
}
- (void)setVal$child:(id<PlaynCoreLayer>)val$child {
  JreOperatorRetainedAssign(&val$child_, self, val$child);
}
@synthesize val$child = val$child_;
- (id<PlaynCoreGroupLayer>)val$newParent {
  return val$newParent_;
}
- (void)setVal$newParent:(id<PlaynCoreGroupLayer>)val$newParent {
  JreOperatorRetainedAssign(&val$newParent_, self, val$newParent);
}
@synthesize val$newParent = val$newParent_;

- (void)run {
  [TripleplayUtilLayers reparentWithPlaynCoreLayer:val$child_ withPlaynCoreGroupLayer:val$newParent_];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
     withPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$child_, self, capture$0);
    JreOperatorRetainedAssign(&val$newParent_, self, capture$1);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$newParent_, self, nil);
  JreOperatorRetainedAssign(&val$child_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$6 *typedCopy = (TripleplayAnimAnimBuilder_$6 *) copy;
  typedCopy.val$child = val$child_;
  typedCopy.val$newParent = val$newParent_;
}

@end
@implementation TripleplayAnimAnimBuilder_$7

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (void)run {
  [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) destroy];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$7 *typedCopy = (TripleplayAnimAnimBuilder_$7 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$8

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;
@synthesize val$depth = val$depth_;

- (void)run {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setDepthWithFloat:val$depth_];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
                   withFloat:(float)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
    val$depth_ = capture$1;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$8 *typedCopy = (TripleplayAnimAnimBuilder_$8 *) copy;
  typedCopy.val$layer = val$layer_;
  typedCopy.val$depth = val$depth_;
}

@end
@implementation TripleplayAnimAnimBuilder_$9

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;
@synthesize val$visible = val$visible_;

- (void)run {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setVisibleWithBOOL:val$visible_];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0
                    withBOOL:(BOOL)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
    val$visible_ = capture$1;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$9 *typedCopy = (TripleplayAnimAnimBuilder_$9 *) copy;
  typedCopy.val$layer = val$layer_;
  typedCopy.val$visible = val$visible_;
}

@end
@implementation TripleplayAnimAnimBuilder_$10

- (id<TripleplaySoundPlayable>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<TripleplaySoundPlayable>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (void)run {
  [((id<TripleplaySoundPlayable>) NIL_CHK(val$sound_)) play];
}

- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$10 *typedCopy = (TripleplayAnimAnimBuilder_$10 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$11

- (id<TripleplaySoundPlayable>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<TripleplaySoundPlayable>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (void)run {
  [((id<TripleplaySoundPlayable>) NIL_CHK(val$sound_)) stop];
}

- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$11 *typedCopy = (TripleplayAnimAnimBuilder_$11 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$12

- (id<PlaynCoreSound>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<PlaynCoreSound>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (void)run {
  [((id<PlaynCoreSound>) NIL_CHK(val$sound_)) play];
}

- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$12 *typedCopy = (TripleplayAnimAnimBuilder_$12 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$13

- (id<TripleplaySoundPlayable>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<TripleplaySoundPlayable>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<TripleplaySoundPlayable>) NIL_CHK(val$sound_)) volume];
}

- (void)setWithFloat:(float)value {
  [((id<TripleplaySoundPlayable>) NIL_CHK(val$sound_)) setVolumeWithFloat:value];
}

- (id)initWithTripleplaySoundPlayable:(id<TripleplaySoundPlayable>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$13 *typedCopy = (TripleplayAnimAnimBuilder_$13 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$14

- (id<PlaynCoreSound>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<PlaynCoreSound>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreSound>) NIL_CHK(val$sound_)) volume];
}

- (void)setWithFloat:(float)value {
  [((id<PlaynCoreSound>) NIL_CHK(val$sound_)) setVolumeWithFloat:value];
}

- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$14 *typedCopy = (TripleplayAnimAnimBuilder_$14 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$15

- (id<PlaynCoreSound>)val$sound {
  return val$sound_;
}
- (void)setVal$sound:(id<PlaynCoreSound>)val$sound {
  JreOperatorRetainedAssign(&val$sound_, self, val$sound);
}
@synthesize val$sound = val$sound_;

- (void)run {
  [((id<PlaynCoreSound>) NIL_CHK(val$sound_)) stop];
}

- (id)initWithPlaynCoreSound:(id<PlaynCoreSound>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$sound_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$sound_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$15 *typedCopy = (TripleplayAnimAnimBuilder_$15 *) copy;
  typedCopy.val$sound = val$sound_;
}

@end
@implementation TripleplayAnimAnimBuilder_$16

- (ReactValue *)val$value {
  return val$value_;
}
- (void)setVal$value:(ReactValue *)val$value {
  JreOperatorRetainedAssign(&val$value_, self, val$value);
}
@synthesize val$value = val$value_;
- (id)val$newValue {
  return val$newValue_;
}
- (void)setVal$newValue:(id)val$newValue {
  JreOperatorRetainedAssign(&val$newValue_, self, val$newValue);
}
@synthesize val$newValue = val$newValue_;

- (void)run {
  (void) [((ReactValue *) NIL_CHK(val$value_)) updateWithId:val$newValue_];
}

- (id)initWithReactValue:(ReactValue *)capture$0
                  withId:(id)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$value_, self, capture$0);
    JreOperatorRetainedAssign(&val$newValue_, self, capture$1);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$newValue_, self, nil);
  JreOperatorRetainedAssign(&val$value_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$16 *typedCopy = (TripleplayAnimAnimBuilder_$16 *) copy;
  typedCopy.val$value = val$value_;
  typedCopy.val$newValue = val$newValue_;
}

@end
@implementation TripleplayAnimAnimBuilder_$17

- (ReactValue *)val$value {
  return val$value_;
}
- (void)setVal$value:(ReactValue *)val$value {
  JreOperatorRetainedAssign(&val$value_, self, val$value);
}
@synthesize val$value = val$value_;
@synthesize val$amount = val$amount_;

- (void)run {
  (void) [((ReactValue *) NIL_CHK(val$value_)) updateWithId:[JavaLangInteger valueOfWithInt:[((JavaLangInteger *) [((ReactValue *) NIL_CHK(val$value_)) get]) intValue] + val$amount_]];
}

- (id)initWithReactValue:(ReactValue *)capture$0
                 withInt:(int)capture$1 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$value_, self, capture$0);
    val$amount_ = capture$1;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$value_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$17 *typedCopy = (TripleplayAnimAnimBuilder_$17 *) copy;
  typedCopy.val$value = val$value_;
  typedCopy.val$amount = val$amount_;
}

@end
@implementation TripleplayAnimAnimBuilder_$18

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) tx];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setTxWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$18 *typedCopy = (TripleplayAnimAnimBuilder_$18 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$19

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) ty];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setTyWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$19 *typedCopy = (TripleplayAnimAnimBuilder_$19 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$20

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) scaleX];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setScaleXWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$20 *typedCopy = (TripleplayAnimAnimBuilder_$20 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end
@implementation TripleplayAnimAnimBuilder_$21

- (id<PlaynCoreLayer>)val$layer {
  return val$layer_;
}
- (void)setVal$layer:(id<PlaynCoreLayer>)val$layer {
  JreOperatorRetainedAssign(&val$layer_, self, val$layer);
}
@synthesize val$layer = val$layer_;

- (float)initial OBJC_METHOD_FAMILY_NONE {
  return [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) scaleY];
}

- (void)setWithFloat:(float)value {
  (void) [((id<PlaynCoreLayer>) NIL_CHK(val$layer_)) setScaleYWithFloat:value];
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$layer_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$layer_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimBuilder_$21 *typedCopy = (TripleplayAnimAnimBuilder_$21 *) copy;
  typedCopy.val$layer = val$layer_;
}

@end