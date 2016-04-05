//
//  AppDelegate.m
//  ExampleIOS
//
//  Created by duanefaith on 15/6/9.
//  Copyright (c) 2015年 duanefaith. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseNavigateViewController.h"
#import "ViewController.h"
#import "testClass.h"
#import "TestObserver.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize status = _status;

TestObserver *_observer;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self.window setBackgroundColor:[UIColor orangeColor]];
    BaseNavigateViewController *baseController = [BaseNavigateViewController new];
    self.window.rootViewController = baseController;
    [baseController pushViewController:[ViewController new] animated:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:NOTI_CALL_TEST object:nil];
    _observer = [TestObserver new];
    [self addObserver:_observer forKeyPath:@"status" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context: @"context"];
    [self setStatus:@"1"];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    [self setStatus:@"2"];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [self setStatus:@"3"];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    [self setStatus:@"4"];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [self setStatus:@"5"];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [self setStatus:@"6"];
}

- (void) handleNotification:(NSNotification *)notification {
    if (notification != nil) {
        LOG(@"%@ received", notification.name);
    }
}

@end
