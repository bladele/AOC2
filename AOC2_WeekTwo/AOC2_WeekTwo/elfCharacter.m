//
//  elfCharacter.m
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "elfCharacter.h"

@implementation elfCharacter

@synthesize weaponType, weaponName, totalWeaponDamage;

//customize the init for the elf
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //setting data member to defaults
        [self setDamagePerSecond:3];
        [self setWeaponType:BOW];
        [self setWeaponName:@""];
        NSLog(@"You created an elf character!");
    }
    return self;
}

//overwriting the calulation method
-(void)calculateDamagePerSecond
{
    NSLog(@"%@ has %i letters", weaponName, [weaponName length]);
    
    if (weaponType == BOW)
    {
        [self setDamagePerSecond:8];
        [self setTotalWeaponDamage:(self.damagePerSecond + ([weaponName length]* 2))];
    }
    else if (weaponType == SABER)
    {
        self.damagePerSecond = 12;
        [self setTotalWeaponDamage:(self.damagePerSecond + ([weaponName length]* 2))];
    }
    else if (weaponType == STAFF)
    {
        self.damagePerSecond = 10;
        [self setTotalWeaponDamage:(self.damagePerSecond + ([weaponName length]* 2))];
    }else
    {
        NSLog(@"You need to specify a valid weapon.");
    }
    
    //log out total weapon damage.
    NSLog(@"This elf character will deal %i damage per second.", self.totalWeaponDamage);
    
}

@end
