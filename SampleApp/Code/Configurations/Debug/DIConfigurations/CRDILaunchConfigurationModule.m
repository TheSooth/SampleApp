//
//  CRDILaunchConfigurationModule.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRDILaunchConfigurationModule.h"
#import "CRLaunchConfiguration.h"

@implementation CRDILaunchConfigurationModule

- (void)configure
{
    [self.container bindClass:[CRLaunchConfiguration class] toProtocol:@protocol(CRLauncher)];
}

@end
