//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Touch.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSObjectArray.h"
#import "java/lang/StringBuilder.h"
#import "playn/core/Events.h"
#import "playn/core/Layer.h"

@implementation PlaynCoreTouch_Event_Impl

@synthesize id_ = id__;
@synthesize pressure_ = pressure__;
@synthesize size_ = size__;

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                            withInt:(int)id_ {
  return [self initPlaynCoreTouch_Event_ImplWithPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y withInt:id_ withFloat:-1 withFloat:-1];
}

- (id)initPlaynCoreTouch_Event_ImplWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                                                  withDouble:(double)time
                                                   withFloat:(float)x
                                                   withFloat:(float)y
                                                     withInt:(int)id_
                                                   withFloat:(float)pressure
                                                   withFloat:(float)size {
  return [self initPlaynCoreTouch_Event_ImplWithPlaynCoreLayer:nil withPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y withInt:id_ withFloat:pressure withFloat:size];
}

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y
                            withInt:(int)id_
                          withFloat:(float)pressure
                          withFloat:(float)size {
  return [self initPlaynCoreTouch_Event_ImplWithPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y withInt:id_ withFloat:pressure withFloat:size];
}

- (PlaynCoreTouch_Event_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit {
  return [[[PlaynCoreTouch_Event_Impl alloc] initWithPlaynCoreLayer:hit withPlaynCoreEvents_Flags:[self flags] withDouble:[self time] withFloat:[self x] withFloat:[self y] withInt:[self id__] withFloat:[self pressure] withFloat:[self size]] autorelease];
}

- (int)id__ {
  return id__;
}

- (float)pressure {
  return pressure__;
}

- (float)size {
  return size__;
}

- (id)initPlaynCoreTouch_Event_ImplWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
                            withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                                           withDouble:(double)time
                                            withFloat:(float)x
                                            withFloat:(float)y
                                              withInt:(int)id_
                                            withFloat:(float)pressure
                                            withFloat:(float)size {
  if ((self = [super initWithPlaynCoreLayer:hit withPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y])) {
    self.id_ = id_;
    self.pressure_ = pressure;
    self.size_ = size;
  }
  return self;
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y
                     withInt:(int)id_
                   withFloat:(float)pressure
                   withFloat:(float)size {
  return [self initPlaynCoreTouch_Event_ImplWithPlaynCoreLayer:hit withPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y withInt:id_ withFloat:pressure withFloat:size];
}

- (NSString *)name {
  return @"Touch.Event";
}

- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder {
  [super addFieldsWithJavaLangStringBuilder:builder];
  (void) [[[[[[((JavaLangStringBuilder *) NIL_CHK(builder)) appendWithNSString:@", id="] appendWithInt:id__] appendWithNSString:@", pressure="] appendWithFloat:pressure__] appendWithNSString:@", size="] appendWithFloat:size__];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreTouch_Event_Impl *typedCopy = (PlaynCoreTouch_Event_Impl *) copy;
  typedCopy.id_ = id__;
  typedCopy.pressure_ = pressure__;
  typedCopy.size_ = size__;
}

@end
@implementation PlaynCoreTouch_Adapter

- (void)onTouchStartWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches {
}

- (void)onTouchMoveWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches {
}

- (void)onTouchEndWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches {
}

- (void)onTouchCancelWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touch {
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PlaynCoreTouch_LayerAdapter

- (void)onTouchStartWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch {
}

- (void)onTouchMoveWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch {
}

- (void)onTouchEndWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch {
}

- (void)onTouchCancelWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch {
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end