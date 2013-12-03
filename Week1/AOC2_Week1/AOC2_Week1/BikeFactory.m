//
//  BikeFactory.m
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "BikeFactory.h"

@implementation BikeFactory

+(baseBike *)createNewBike: (int)bikeType
{
    return [[streetBike alloc] init];
}

@end
