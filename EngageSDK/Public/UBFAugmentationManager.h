//
//  UBFAugmentationManager.h
//  EngageSDK
//
//  Created by Jeremy Dyer on 6/10/14.
//  Copyright (c) 2014 Silverpop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EngageEvent.h"
#import "UBF.h"

@interface UBFAugmentationManager : NSObject

@property (strong, nonatomic) NSMutableArray *augmentationPlugins;

+(instancetype)sharedInstance;

-(void)zeroOutLocalCacheSize;
-(void)augmentUBFEvent:(UBF*)eventToAugment withEngageEvent:(EngageEvent *)engageEvent;

@end
