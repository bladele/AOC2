//
//  streetBike.m
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "streetBike.h"

@implementation streetBike

//customizeing init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setMonthlyPayment:200];
        [self setEngineSize:0];
        [self setFeatures:0];
    }
    return self;
};

//overideing the base bike monthly payment
-(void)calculateMonthlyPayment
{
    [self setMonthlyPayment:(_totalCost / _durrationOfLoan)];
    NSLog(@"This bike will cost me %i per month.", self.monthlyPayment);
}

@end
