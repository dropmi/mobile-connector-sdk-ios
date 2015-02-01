//
//  AppDelegate.m
//  EngageSDK-1-1-0-Demo-ios
//
//  Created by Lindsay Thurmond on 1/30/15.
//  Copyright (c) 2015 Silverpop. All rights reserved.
//

#import "AppDelegate.h"
#import <EngageSDK/EngageSDK.h>
#import "sample_config.h"
#import "MobileIdentityManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [EngageSDK initializeSDKClient:ENGAGE_CLIENT_ID secret:ENGAGE_SECRET token:ENGAGE_REFRESH_TOKEN host:ENGAGE_BASE_URL engageDatabaseListId:ENGAGE_LIST_ID];
    
    // do any custom setup you need, such as audit record table config
    
    // most people won't want to use a separate AuditRecord table and can skip this step, but we're demoing how you would
    [EngageConfig storeAuditRecordTableId:ENGAGE_AUDIT_RECORD_LIST_ID];

    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
