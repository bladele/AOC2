//
//  offroadBike.h
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "baseBike.h"

@interface offroadBike : baseBike
{
    int offRoad;
}

typedef enum
{
    DUALSPORT,
    TRAIL,
    ATV
} offRoad;

@property NSArray *engineSize;
@property BOOL *headLights;
@property int wheelNum;


@end
