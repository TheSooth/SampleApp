//
//  CRAPSNConfiguration.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRAPSNConfiguration.h"

@implementation CRAPSNConfiguration

- (void)didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    NSLog(@"deviceToken = %@", [[NSString alloc] initWithData:deviceToken encoding:NSUTF8StringEncoding]);
}

- (UIRemoteNotificationType)notificationTypes
{
    return (UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeBadge);
}

@end
