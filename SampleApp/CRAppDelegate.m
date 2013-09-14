//
//  CRAppDelegate.m
//  SampleApp
//
//  Created by Sergey Zenchenko on 9/15/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRAppDelegate.h"

@implementation CRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
