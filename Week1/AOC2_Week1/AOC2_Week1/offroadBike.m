//
//  offroadBike.m
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "offroadBike.h"

@implementation offroadBike

@synthesize engineSize, wheelNum, headLights, monthlyPayment;

-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setEngineSize:0];
        [self setHeadLights:nil];
        [self setWheelNum:2];
        [self setMonthlyPayment:0];
        NSLog(@"You build a bike!");
    }
    return self;
};

-(void)calculateMonthlyPayment
{
    NSLog(@"This bike will require a payment of %i per month.", monthlyPayment);
    
    //if the bike is not road worthy
    if ((headLights == FALSE) && (wheelNum > 2))
    {
        NSLog(@"This bike is for trail riding fun.");
    }
    else if ((headLights != FALSE) && (wheelNum == 2))
    {
        NSLog(@"This bike can be used for communting to work.");
    }
}

@end
