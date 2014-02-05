//
//  humanCharacter.m
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "humanCharacter.h"

@implementation humanCharacter

@synthesize skill, damagePerSkill;

//customize init to set unique data members
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDamagePerSecond:0];
        [self setSkill:0];
        [self setDamagePerSkill:10];
    }
    return self;
};

-(void)calculateDamagePerSecond
{
    [self setDamagePerSecond:(skill * damagePerSkill)];
    NSLog(@"This character will deal %i damage per second.", self.damagePerSecond);
}

@end
