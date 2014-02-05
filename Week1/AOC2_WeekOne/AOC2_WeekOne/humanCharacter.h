//
//  humanCharacter.h
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "baseCharacter.h"

@interface humanCharacter : baseCharacter

//data members for skill and damage per skill
@property int skill;
@property int damagePerSkill;

//calculation to overide
-(void)calculateDamagePerSecond;

@end
