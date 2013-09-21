//
//  CRDebugConfiguration.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRDebugConfiguration.h"
#import <CRDIContainer.h>
#import <CRDIConfiguration.h>
#import "CRDIAppearanceConfigurationModule.h"
#import "CRDIAPSNConfigurationModule.h"

@implementation CRDebugConfiguration

@synthesize container;

- (void)setup
{
    [self setupIOC];
}

- (void)setupIOC
{
    CRDIAppearanceConfigurationModule *appearanceConfigurationModule = [[CRDIAppearanceConfigurationModule alloc] initWithContainer:self.container];
    [appearanceConfigurationModule includeConfigurationWithClass:[CRDIAPSNConfigurationModule class]];
}

@end
