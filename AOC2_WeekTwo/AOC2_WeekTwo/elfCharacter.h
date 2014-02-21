//
//  elfCharacter.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "baseCharacter.h"

@interface elfCharacter : baseCharacter
{
    int elfWeapon;
}

typedef enum
{
    BOW,
    SABER,
    STAFF
}elfWeapon;

@property int weaponType;
@property NSString *weaponName;
@property int totalWeaponDamage;

@end
