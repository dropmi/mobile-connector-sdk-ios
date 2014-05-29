//
//  EngageLocalEventStore.h
//  EngageSDK
//
//  Created by Jeremy Dyer on 4/23/14.
//  Copyright (c) 2014 Silverpop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "EngageEvent.h"
#import "EngageConfig.h"

@interface EngageLocalEventStore : NSObject

+ (EngageLocalEventStore *)sharedInstance;

- (NSArray *) findUnpostedEvents;
- (void) deleteExpiredLocalEvents;
- (EngageEvent *)saveUBFEvent:(NSDictionary *)event status:(int)status;
- (EngageEvent *)findEngageEventWithIdentifier:(NSURL *)urlIdentifier;
- (NSArray *)findEngageEventsWithStatus:(int)eventStatus;

// Utility methods
- (NSUInteger) countForEventType:(NSNumber *)eventType;
- (NSUInteger) deleteAllUBFEvents;
- (NSString *)createJsonStringFromDictionary:(NSDictionary *)dictionary;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistenceStoreCoordinator;

@end