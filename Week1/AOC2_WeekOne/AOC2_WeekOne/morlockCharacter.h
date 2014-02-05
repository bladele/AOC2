//
//  morlockCharacter.h
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
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
