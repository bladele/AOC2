//
//  ViewController.m
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextfield;
@property (weak, nonatomic) IBOutlet UILabel *characterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dpsLabel;


@end

@implementation ViewController

//Method to release the keyboard by touching anything else.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)home:(UIStoryboardSegue *)segue
{
    
}

- (IBAction)createCharacter:(id)sender
{
    NSString *contents = [[self nameTextfield] text];
    
    NSString *name = [NSString stringWithFormat:@"%@", contents];
    [self.characterNameLabel setText:name];
    
    humanCharacter *human = (humanCharacter*)[CharacterFactory createNewCharacter:HUMAN];
    [human setSkill:addSkill.value];
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0)
        {
            humanImage.hidden = false;
            morlockImage.hidden = true;
            elfImage.hidden = true;
            createCharacterBtn.enabled = true;
            NSLog(@"you pressed first button");
        }
        else if (button.tag == 1)
        {
            elfImage.hidden = false;
            humanImage.hidden = true;
            morlockImage.hidden = true;
            createCharacterBtn.enabled = true;
            NSLog(@"you pressed button 2");
        }
        else if (button.tag == 2)
        {
            morlockImage.hidden = false;
            humanImage.hidden = true;
            elfImage.hidden = true;
            createCharacterBtn.enabled = true;
            NSLog(@"button 3");
        }
    }
}

-(IBAction)onChange:(id)sender
{
    UIStepper *addingSkill = (UIStepper*)sender;
    if (addingSkill != nil)
    {
        int currentValue = addSkill.value;
        skillLabel.text = [NSString stringWithFormat: @"%d", currentValue];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
