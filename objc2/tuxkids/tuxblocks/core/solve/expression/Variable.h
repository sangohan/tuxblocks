//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Variable.java
//
//  Created by Thomas on 7/10/13.
//

@class TuxkidsTuxblocksCoreUtilsHashCode;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/solve/expression/Expression.h"

@interface TuxkidsTuxblocksCoreSolveExpressionVariable : TuxkidsTuxblocksCoreSolveExpressionExpression {
 @public
  NSString *name_;
}

@property (nonatomic, copy) NSString *name;

- (NSString *)getName;
- (id)initWithNSString:(NSString *)name;
- (NSString *)toMathString;
- (BOOL)hasVariable;
- (int)evaluate;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)getSimplified;
- (int)getPrecedence;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
@end