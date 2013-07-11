//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/AbstractDimension.java
//
//  Created by Thomas on 7/9/13.
//

#import "pythagoras/i/Dimension.h"
#import "pythagoras/i/Dimensions.h"
#import "pythagoras/i/IDimension.h"
#import "AbstractDimension.h"

@implementation PythagorasIAbstractDimension

- (PythagorasIDimension *)clone {
  return [[[PythagorasIDimension alloc] initWithPythagorasIIDimension:self] autorelease];
}

- (NSUInteger)hash {
  return [self width] ^ [self height];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasIAbstractDimension class]]) {
    PythagorasIAbstractDimension *d = (PythagorasIAbstractDimension *) obj;
    return ([((PythagorasIAbstractDimension *) NIL_CHK(d)) width] == [self width] && [((PythagorasIAbstractDimension *) NIL_CHK(d)) height] == [self height]);
  }
  return NO;
}

- (NSString *)description {
  return [PythagorasIDimensions dimenToStringWithInt:[self width] withInt:[self height]];
}

- (int)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  [super dealloc];
}

@end