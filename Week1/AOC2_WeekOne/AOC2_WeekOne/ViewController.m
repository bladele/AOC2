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
        NSArray *gear = [[NSArray alloc]initWithObjects:@"armor", @"mount", @"sword", nil];
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
        NSArray *gear = [[NSArray alloc]initWithObjects:@"leather tunik", @"mount", @"weapon", nil];
        [elfMan setGear:gear];
        
        [elfMan setCharacterName:@"Mindon"];
        [elfMan setWeaponType:SABER];
        [elfMan setWeaponName:@"catalyst"];
        
        [elfMan damagePerSecond];
        
        NSLog(@"You created a new elf character and his name is %@", [elfMan characterName]);
        NSLog(@"His weapon is called %@", [elfMan weaponName]);
        [elfMan calculateDamagePerSecond];
    }
    
    //Creat a morlock character, name his caster and find his damage per second.
    morlockCharacter *beardedOne = (morlockCharacter*)[CharacterFactory createNewCharacter:MORLOCK];
    
    if (beardedOne !=nil)
    {
        NSArray *gear = [[NSArray alloc]initWithObjects:@"magic robe", @"mount", @"caster", nil];
        [beardedOne setGear:gear];
        
        [beardedOne setCharacterName:@"Tooxin"];
        [beardedOne setCasterType:TRYDENT];
        [beardedOne setMagicWords:@"Abracadabra"];
        
        [beardedOne damagePerSecond];
        
        NSLog(@"You created a new worlock character and his name is %@", [beardedOne characterName]);
        NSLog(@"His magic word is %@", [beardedOne magicWords]);
        [beardedOne calculateDamagePerSecond];
    }
    
    //labels for the human character.
    humanLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 85.0f)];
    if (humanLabel != nil)
    {
        humanLabel.numberOfLines = 4;
        humanLabel.textColor = [UIColor blueColor];
        humanLabel.textAlignment = NSTextAlignmentCenter;
        humanLabel.backgroundColor =[UIColor yellowColor];
        humanLabel.text = [NSString stringWithFormat:@"'%@' is human with %@ .", [heroGuy characterName], [heroGuy gear]];
    }
    [self.view addSubview:humanLabel];
    
    humanLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 320.0f, 75.0f)];
    if (humanLabelTwo != nil)
    {
        humanLabelTwo.numberOfLines = 3;
        humanLabelTwo.textColor = [UIColor blueColor];
        humanLabelTwo.textAlignment = NSTextAlignmentCenter;
        humanLabelTwo.backgroundColor =[UIColor yellowColor];
        humanLabelTwo.text = [NSString stringWithFormat:@"Human Character '%@' deals %i damage per second.", [heroGuy characterName], [heroGuy damagePerSecond]];
    }
    [self.view addSubview:humanLabelTwo];
    
    //labels for the elf character.
    elfLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 210.0f, 320.0f, 85.0f)];
    if (elfLabel != nil)
    {
        elfLabel.numberOfLines = 4;
        elfLabel.textColor = [UIColor blackColor];
        elfLabel.textAlignment = NSTextAlignmentCenter;
        elfLabel.backgroundColor = [UIColor greenColor];
        elfLabel.text = [NSString stringWithFormat:@"'%@' is elven with %@ .", [elfMan characterName], [elfMan gear]];
        
    }
    [self.view addSubview:elfLabel];
    
    elfLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 300.0f, 320.0f, 75.0f)];
    if (elfLabelTwo != nil)
    {
        elfLabelTwo.numberOfLines = 3;
        elfLabelTwo.textColor = [UIColor blackColor];
        elfLabelTwo.textAlignment = NSTextAlignmentCenter;
        elfLabelTwo.backgroundColor = [UIColor greenColor];
        elfLabelTwo.text = [NSString stringWithFormat:@"Elf Character '%@' deals %i damage per second.", [elfMan characterName], [elfMan totalWeaponDamage]];
        
    }
    [self.view addSubview:elfLabelTwo];
    
    //labels for the morlock character.
    morlockLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 85.0f)];
    if (morlockLabel != nil)
    {
        morlockLabel.numberOfLines = 4;
        morlockLabel.textColor = [UIColor whiteColor];
        morlockLabel.textAlignment = NSTextAlignmentCenter;
        morlockLabel.backgroundColor = [UIColor redColor];
        morlockLabel.text = [NSString stringWithFormat:@"'%@' is morlock with %@ .", [beardedOne characterName], [beardedOne gear]];
    }
    [self.view addSubview:morlockLabel];
    
    morlockLabelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 470.0f, 320.0f, 75.0f)];
    if (morlockLabelTwo !=  nil)
    {
        morlockLabelTwo.numberOfLines = 3;
        morlockLabelTwo.textColor = [UIColor whiteColor];
        morlockLabelTwo.backgroundColor = [UIColor redColor];
        morlockLabelTwo.textAlignment = NSTextAlignmentCenter;
        morlockLabelTwo.text = [NSString stringWithFormat:@"Morlock character '%@' deals %i damage per second.", [beardedOne characterName], [beardedOne totalCasterDamage]];
    }
    [self.view addSubview:morlockLabelTwo];
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
