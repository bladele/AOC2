//
//  CharacterFactory.m
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "CharacterFactory.h"
#import "baseCharacter.h"
#import "humanCharacter.h"
#import "elfCharacter.h"
#import "morlockCharacter.h"
#import "DiskInterface.h"

@implementation CharacterFactory

-(void)LoadFromDisk;
{
    
}

-(BOOL)SaveToDisk;
{
    return true;
}

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
