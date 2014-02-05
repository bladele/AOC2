//
//  elfCharacter.h
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
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
