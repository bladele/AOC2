//
//  baseCharacter.h
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/4/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCharacter : NSObject
{
    int characterType;
}

typedef enum
{
    HUMAN,
    ELF,
    MORLOCK
} characterType;

//data memember of
@property NSArray *gear;
@property NSString *characterName;
@property int damagePerSecond;

//initialize
-(id)init;


//calculating/manipulation method to find DPS
-(void)calculateDamagePerSecond;

@end
