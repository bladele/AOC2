//
//  humanCharacter.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "baseCharacter.h"

@interface humanCharacter : baseCharacter

//data members for skill and damage per skill
@property int skill;
@property int damagePerSkill;

//calculation to overide
-(void)calculateDamagePerSecond;

@end
