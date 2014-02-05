//
//  morlockCharacter.m
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "morlockCharacter.h"

@implementation morlockCharacter

//customize the init for the morlock
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDamagePerSecond:0];
        [self setCasterType:WAND];
        [self setMagicWords:@""];
        NSLog(@"You created a morlock character!");
    }
    return self;
}


@end
