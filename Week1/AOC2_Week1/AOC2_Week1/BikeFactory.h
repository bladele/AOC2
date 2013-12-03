//
//  BikeFactory.h
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseBike.h"
#import "streetBike.h"
#import "offroadBike.h"
#import "scooterBike.h"

@interface BikeFactory : NSObject

+(baseBike *)createNewBike: (int)bikeType;

@end
