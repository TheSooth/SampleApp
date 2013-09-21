//
//  CRTransactionConfiguration.m
//  SampleApp
//
//  Created by TheSooth on 9/21/13.
//  Copyright (c) 2013 CriolloKit. All rights reserved.
//

#import "CRTransactionConfiguration.h"
#import <CRTransactionLogger.h>

@implementation CRTransactionConfiguration

- (NSArray *)transactionHandlersArray
{
    return @[[CRTransactionLogger new]];
}

@end
