//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/BeveledBackground.java
//
//  Created by Thomas on 7/1/13.
//

@class TripleplayUiBackground_Instance;
@protocol PlaynCoreSurface;
@protocol PythagorasFIDimension;

#import "JreEmulation.h"
#import "playn/core/ImmediateLayer.h"
#import "tripleplay/ui/Background.h"

@interface TripleplayUiBgsBeveledBackground : TripleplayUiBackground {
 @public
  int _bgColor_, _ulColor_, _brColor_;
}

@property (nonatomic, assign) int _bgColor;
@property (nonatomic, assign) int _ulColor;
@property (nonatomic, assign) int _brColor;

- (id)initWithInt:(int)bgColor
          withInt:(int)ulColor
          withInt:(int)brColor;
- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size;
@end

@interface TripleplayUiBgsBeveledBackground_$1 : NSObject < PlaynCoreImmediateLayer_Renderer > {
 @public
  TripleplayUiBgsBeveledBackground *this$0_;
  id<PythagorasFIDimension> val$size_;
}

@property (nonatomic, retain) TripleplayUiBgsBeveledBackground *this$0;
@property (nonatomic, retain) id<PythagorasFIDimension> val$size;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf;
- (id)initWithTripleplayUiBgsBeveledBackground:(TripleplayUiBgsBeveledBackground *)outer$
                     withPythagorasFIDimension:(id<PythagorasFIDimension>)capture$0;
@end