//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/gesture/Swipe.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasFPoint;
@class TripleplayGestureGestureNode;
@class TripleplayGestureGesture_DirectionEnum;
@class TripleplayGestureGesture_StateEnum;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "tripleplay/gesture/GestureBase.h"

@interface TripleplayGestureSwipe : TripleplayGestureGestureBase {
 @public
  int _touches_;
  TripleplayGestureGesture_DirectionEnum *_direction_;
  int _directionModifier_;
  BOOL _movedEnough_;
  id<JavaUtilMap> _startNodes_;
  id<JavaUtilMap> _lastNodes_;
  BOOL _cancelOnPause_;
  int _offAxisTolerance_;
  int _onAxisThreshold_;
  BOOL _axisSwipe_;
}

@property (nonatomic, assign) int _touches;
@property (nonatomic, retain) TripleplayGestureGesture_DirectionEnum *_direction;
@property (nonatomic, assign) int _directionModifier;
@property (nonatomic, assign) BOOL _movedEnough;
@property (nonatomic, retain) id<JavaUtilMap> _startNodes;
@property (nonatomic, retain) id<JavaUtilMap> _lastNodes;
@property (nonatomic, assign) BOOL _cancelOnPause;
@property (nonatomic, assign) int _offAxisTolerance;
@property (nonatomic, assign) int _onAxisThreshold;
@property (nonatomic, assign) BOOL _axisSwipe;

- (id)initWithTripleplayGestureGesture_DirectionEnum:(TripleplayGestureGesture_DirectionEnum *)direction;
- (id)initWithInt:(int)touches
withTripleplayGestureGesture_DirectionEnum:(TripleplayGestureGesture_DirectionEnum *)direction;
- (TripleplayGestureSwipe *)cancelOnPauseWithBOOL:(BOOL)value;
- (TripleplayGestureSwipe *)offAxisToleranceWithInt:(int)pixels;
- (TripleplayGestureSwipe *)onAxisThresholdWithInt:(int)pixels;
- (TripleplayGestureSwipe *)axisSwipeWithBOOL:(BOOL)value;
- (void)clearMemory;
- (void)updateStateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
- (TripleplayGestureGesture_StateEnum *)getEndState;
- (void)evaluateMoveWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
- (float)axisDistanceWithPythagorasFPoint:(PythagorasFPoint *)start
                     withPythagorasFPoint:(PythagorasFPoint *)end;
- (void)backtrackedWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node
                                          withFloat:(float)distance;
- (void)setDirectionWithTripleplayGestureGesture_DirectionEnum:(TripleplayGestureGesture_DirectionEnum *)direction;
@end