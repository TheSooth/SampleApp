//
//  CRDIAPSNConfigurationModule.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRDIAPSNConfigurationModule.h"
#import "CRAPSNConfiguration.h"

@implementation CRDIAPSNConfigurationModule

- (void)configure
{
    [self.container bindClass:[CRAPSNConfiguration class] toProtocol:@protocol(CRPushNotificationsConfigurator)];
}

@end
