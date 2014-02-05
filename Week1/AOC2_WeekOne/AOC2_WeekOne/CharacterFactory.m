//
//  CharacterFactory.m
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "CharacterFactory.h"

@implementation CharacterFactory

+(baseCharacter *)createNewCharacter: (int)characterType
{
    //if human is requested create human character
    if (characterType == HUMAN)
    {
        return [[humanCharacter alloc] init];
    }
    //if elf is requested create elf character
    else if (characterType == ELF)
    {
        return [[elfCharacter alloc] init];
    }
    //if morlock is requested create morlock character
    else if (characterType == MORLOCK)
    {
        return [[morlockCharacter alloc] init];
    }
    
    else return nil;
    
    
}

@end
