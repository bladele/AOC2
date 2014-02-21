//
//  NewEventViewController.m
//  AOC2_Week3
//
//  Created by Bodunrin Ladele on 2/20/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "NewEventViewController.h"

@interface NewEventViewController ()


@end

@implementation NewEventViewController
@synthesize delegate, datePicker, eventName;




//Method to release the keyboard by touching anything else.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

//method to save event
- (IBAction)saveEvent:(id)sender {
    NSDate *newDate = datePicker.date;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"MMM d, yyyy h:mm a"];
    NSString *msg = [formatter stringFromDate:newDate];
    [self.delegate createdEvent:eventName.text getEvent:msg];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"%@", msg);
    
}

//method to hide keyboard
-(IBAction)hideKeyboard:(id)sender
{
    [self.eventName resignFirstResponder];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
