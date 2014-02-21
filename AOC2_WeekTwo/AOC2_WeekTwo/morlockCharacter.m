//
//  morlockCharacter.m
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
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

//overwriting the calulation method
-(void)calculateDamagePerSecond
{
    NSLog(@"%@ has %i letters", _magicWords, [_magicWords length]);
    
    if (_casterType == WAND)
    {
        [self setDamagePerSecond:4];
        [self setTotalCasterDamage:(self.damagePerSecond * ([_magicWords length]* 3))];
    }
    else if (_casterType == CEPTER)
    {
        [self setDamagePerSecond:6];
        [self setTotalCasterDamage:(self.damagePerSecond * ([_magicWords length]*3))];
    }
    else if (_casterType == TRYDENT)
    {
        [self setDamagePerSecond:8];
        [self setTotalCasterDamage:(self.damagePerSecond * ([_magicWords length]*3))];
    }else
    {
        NSLog(@"You need to specify a valid magic caster.");
    }
    
    
    //log out total weapon damage.
    NSLog(@"This morlock character will deal %i damage per second.", self.totalCasterDamage);
}

@end
