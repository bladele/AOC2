//
//  CharacterFactory.h
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCharacter.h"
#import "humanCharacter.h"
#import "elfCharacter.h"
#import "morlockCharacter.h"


@interface CharacterFactory : NSObject

+(baseCharacter *)createNewCharacter: (int)characterType;

@end
