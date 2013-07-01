//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Value.java
//
//  Created by Thomas on 7/1/13.
//

#import "react/AbstractValue.h"
#import "react/Slot.h"

@implementation ReactValue

- (id)_value {
  return _value_;
}
- (void)set_value:(id)_value {
  JreOperatorRetainedAssign(&_value_, self, _value);
}
@synthesize _value = _value_;

+ (ReactValue *)createWithId:(id)value {
  return [[[ReactValue alloc] initWithId:value] autorelease];
}

- (id)initWithId:(id)value {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_value_, self, value);
  }
  return self;
}

- (id)updateWithId:(id)value {
  return [self updateAndNotifyIfWithId:value];
}

- (id)updateForceWithId:(id)value {
  return [self updateAndNotifyWithId:value];
}

- (ReactSlot *)slot {
  return [[[ReactValue_$1 alloc] initWithReactValue:self] autorelease];
}

- (id)get {
  return _value_;
}

- (id)updateLocalWithId:(id)value {
  id oldValue = _value_;
  JreOperatorRetainedAssign(&_value_, self, value);
  return oldValue;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_value_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValue *typedCopy = (ReactValue *) copy;
  typedCopy._value = _value_;
}

@end
@implementation ReactValue_$1

- (ReactValue *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ReactValue *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;

- (void)onEmitWithId:(id)value {
  (void) [this$0_ updateWithId:value];
}

- (id)initWithReactValue:(ReactValue *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValue_$1 *typedCopy = (ReactValue_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end