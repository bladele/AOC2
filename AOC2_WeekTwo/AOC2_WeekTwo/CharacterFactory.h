//
//  CharacterFactory.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCharacter.h"
#import "humanCharacter.h"
#import "elfCharacter.h"
#import "morlockCharacter.h"
#import "DiskInterface.h"

@interface CharacterFactory : NSObject <DiskInterface>

+(baseCharacter *)createNewCharacter: (int)characterType;

@end
