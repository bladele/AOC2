//
//  ViewController.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CharacterFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *humanBtn;
    IBOutlet UIButton *elfBtn;
    IBOutlet UIButton *morlockBtn;
    IBOutlet UIButton *createCharacterBtn;
    
    IBOutlet UIImageView *humanImage;
    IBOutlet UIImageView *elfImage;
    IBOutlet UIImageView *morlockImage;
    
    IBOutlet UIStepper *addSkill;
    IBOutlet UILabel *skillLabel;
    
    IBOutlet UILabel *characterName;
    IBOutlet UILabel *damagePerSecond;
    
    
    
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;




@end
