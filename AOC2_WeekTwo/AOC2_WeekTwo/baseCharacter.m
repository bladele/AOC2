//
//  baseCharacter.m
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "baseCharacter.h"

@implementation baseCharacter

//initialize the base character.
@synthesize gear, characterName, damagePerSecond;

//initialize the base character, creating the instance and setting the DPS to zero.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDamagePerSecond:0];
        [self setCharacterName:nil];
        [self setGear:nil];
    }
    return self;
}

//calculating/manipulation method to find DPS
-(void)calculateDamagePerSecond
{
    NSLog(@"This character will deal %i damage points per second.", damagePerSecond);
}


@end
