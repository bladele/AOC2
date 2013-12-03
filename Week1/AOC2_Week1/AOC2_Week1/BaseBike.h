//
//  baseBike.h
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseBike : NSObject
{
    int bikeEnum;
}

typedef enum
{
    STREET,
    OFFROAD,
    SCOOTER
} bikeEnum;

//data member for size, speed, and array of features.
@property NSArray *engineSize;
@property NSString *features;
@property int monthlyPayment;

//initialize
-(id)init;

//calculating/manipulation method to find monthly payment
-(void)calculateMonthlyPayment;


@end
