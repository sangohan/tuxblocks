//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/Walker.java
//
//  Created by Thomas on 7/10/13.
//

@class PythagorasFVector;
@class PythagorasIPoint;
@class TuxkidsTuxblocksCoreDefenseGrid;
@class TuxkidsTuxblocksCoreDefenseWalkerBuffBuff;
@class TuxkidsTuxblocksCoreImageLayerTintable;
@protocol JavaUtilList;
@protocol PlaynCoreLayer;
@protocol PlaynCoreUtilClock;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/defense/DiscreteGridObject.h"

@interface TuxkidsTuxblocksCoreDefenseWalkerWalker : TuxkidsTuxblocksCoreDefenseDiscreteGridObject {
 @public
  id<JavaUtilList> path_;
  PythagorasIPoint *lastCoordinates_, *destination_;
  TuxkidsTuxblocksCoreImageLayerTintable *layer__;
  float hp_;
  float alpha_;
  float walkingMs_;
  BOOL placed_;
  PythagorasFVector *position__;
  id<JavaUtilList> buffs_;
}

@property (nonatomic, strong) id<JavaUtilList> path;
@property (nonatomic, strong) PythagorasIPoint *lastCoordinates;
@property (nonatomic, strong) PythagorasIPoint *destination;
@property (nonatomic, strong) TuxkidsTuxblocksCoreImageLayerTintable *layer_;
@property (nonatomic, assign) float hp;
@property (nonatomic, assign) float alpha;
@property (nonatomic, assign) float walkingMs;
@property (nonatomic, assign) BOOL placed;
@property (nonatomic, strong) PythagorasFVector *position_;
@property (nonatomic, strong) id<JavaUtilList> buffs;

- (void)updateMovementWithFloat:(float)perc;
- (int)getMaxHp;
- (int)walkCellTime;
- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE;
- (id<PlaynCoreLayer>)layerAddable;
- (TuxkidsTuxblocksCoreImageLayerTintable *)layer;
- (PythagorasFVector *)position;
- (float)width;
- (float)height;
- (BOOL)isAlive;
- (BOOL)destroyed;
- (void)setDepthWithFloat:(float)depth;
- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)placeWithTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
                                                                 withPythagorasIPoint:(PythagorasIPoint *)coordinates
                                                                 withPythagorasIPoint:(PythagorasIPoint *)desitnation
                                                                            withFloat:(float)depth;
- (void)createSprite;
- (void)refreshPath;
- (float)depthRow;
- (float)depthCol;
- (BOOL)updateWithInt:(int)delta;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (void)damageWithFloat:(float)damage;
- (void)addBuffWithTuxkidsTuxblocksCoreDefenseWalkerBuffBuff:(TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *)buff
                                                    withBOOL:(BOOL)replaceIfPresent;
- (id)init;
@end