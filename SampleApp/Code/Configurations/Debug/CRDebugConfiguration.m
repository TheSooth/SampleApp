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
#import "CRDILaunchConfigurationModule.h"
#import <CRTransactionDispatcher.h>
#import <CRTransactionLogger.h>


@implementation CRDebugConfiguration

@synthesize container;

- (void)setup
{
    [self setupIOC];
    
    [self setupTransaction];
}

- (void)setupIOC
{
    CRDIAppearanceConfigurationModule *appearanceConfigurationModule = [[CRDIAppearanceConfigurationModule alloc] initWithContainer:self.container];
    [appearanceConfigurationModule includeConfigurationWithClass:[CRDIAPSNConfigurationModule class]];
    [appearanceConfigurationModule includeConfigurationWithClass:[CRDILaunchConfigurationModule class]];
}

- (void)setupTransaction
{
    CRTransactionDispatcher *dispatcher = [CRTransactionDispatcher new];
    CRTransactionLogger *loggerHandler = [CRTransactionLogger new];
    
    [dispatcher addDispatchHandler:loggerHandler];
    
    [CRTransactionDispatcher setSharedDispatcher:dispatcher];
}

@end
