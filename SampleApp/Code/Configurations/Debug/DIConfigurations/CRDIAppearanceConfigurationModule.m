//
//  CRDIAppearanceConfigurationModule.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRDIAppearanceConfigurationModule.h"
#import "CRAppearanceConfiguration.h"

@implementation CRDIAppearanceConfigurationModule

- (void)configure
{
    [self.container bindClass:[CRAppearanceConfiguration class] toProtocol:@protocol(CRAppearanceConfigurator)];
}

@end
