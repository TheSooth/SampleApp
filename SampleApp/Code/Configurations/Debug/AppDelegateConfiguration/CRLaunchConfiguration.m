//
//  CRLaunchConfiguration.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRLaunchConfiguration.h"
#import "CRSARootTranscation.h"

@interface CRLaunchConfiguration ()

@property (nonatomic, strong) CRSARootTranscation *rootTransaction;

@end

@implementation CRLaunchConfiguration

- (void)launchWithWindow:(UIWindow *)aWindow
{
    self.rootTransaction = [CRSARootTranscation new];
    [self.rootTransaction setWindow:aWindow];
    
    [self.rootTransaction call];
}

@end
