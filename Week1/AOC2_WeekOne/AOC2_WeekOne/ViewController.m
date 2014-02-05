//
//  ViewController.m
//  AOC2_WeekOne
//
//  Created by Bodunrin Ladele on 12/2/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //create a human character and set skill
    humanCharacter *heroGuy = (humanCharacter*)[CharacterFactory createNewCharacter:HUMAN];
    [heroGuy setSkill:4];
    
    if (heroGuy != nil)
    {
        NSArray *gear = [[NSArray alloc]initWithObjects:@"armor", @"mount", nil];
        [heroGuy setGear:gear];
        
        NSString *characterName = @"Guy Hero";
        [heroGuy setCharacterName:characterName];
        
        NSLog(@"You created a new human character and his name is %@", [heroGuy characterName]);
        NSLog(@"His gear includes %@", [heroGuy gear]);
        
        //calculate damage per second
        [heroGuy calculateDamagePerSecond];
        
    }
    
    //Create elf character, name his weapon and find his damage per second.
    elfCharacter *elfMan = (elfCharacter*)[CharacterFactory createNewCharacter:ELF];
    
    if (elfMan != nil)
    {
        [elfMan setCharacterName:@"Mindon"];
        [elfMan setWeaponType:SABER];
        [elfMan setWeaponName:@"catalyst"];
        
        [elfMan damagePerSecond];
        
        NSLog(@"You created a new elf character and his name is %@", [elfMan characterName]);
        NSLog(@"His weapon is called %@", [elfMan weaponName]);
        [elfMan calculateDamagePerSecond];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
