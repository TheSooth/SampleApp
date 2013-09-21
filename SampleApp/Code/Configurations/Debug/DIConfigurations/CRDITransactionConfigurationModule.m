//
//  CRTransactionConfigurationModule.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRDITransactionConfigurationModule.h"
#import "CRDIAPSNConfigurationModule.h"
#import "CRSARootTranscation.h"
#import <CRHandlersTransactionDispatcher.h>
#import "CRTransactionConfiguration.h"

@implementation CRDITransactionConfigurationModule

- (void)configure
{
    [self.container bindClass:[CRSARootTranscation class] toProtocol:@protocol(CRRootTransaction)];
    [self.container bindClass:[CRTransactionConfiguration class] toProtocol:@protocol(CRTransactionHandlers)];
}

@end
