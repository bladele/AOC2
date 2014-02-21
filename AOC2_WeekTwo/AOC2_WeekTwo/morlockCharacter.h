//
//  morlockCharacter.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "baseCharacter.h"

@interface morlockCharacter : baseCharacter
{
    int lockCaster;
}

typedef enum
{
    WAND,
    CEPTER,
    TRYDENT
}lockCaster;

@property int casterType;
@property NSString *magicWords;
@property int totalCasterDamage;

@end
