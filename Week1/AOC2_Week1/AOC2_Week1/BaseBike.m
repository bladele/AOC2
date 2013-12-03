//
//  baseBike.m
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "baseBike.h"

@implementation baseBike

// initialize the base bike,
@synthesize engineSize, features, monthlyPayment;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setMonthlyPayment:0];
        [self setEngineSize:nil];
        [self features];
    }
    return self;
}

//calculating/manipulation method to find monthly payment
-(void)calculateMonthlyPayment
{
    NSLog(@"This bike will require a payment of %i per month.", monthlyPayment);
}

@end
