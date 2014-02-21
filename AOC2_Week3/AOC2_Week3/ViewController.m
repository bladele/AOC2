//
//  ViewController.m
//  AOC2_Week3
//
//  Created by Bodunrin Ladele on 2/20/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import "ViewController.h"
#import "NewEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize allEvents;



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NewEventViewController *nxtView = (NewEventViewController *)segue.destinationViewController;
    nxtView.delegate = self;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)createdEvent:(NSString *)eventText getEvent:(NSString *)date;
{
    allEvents.text = [allEvents.text stringByAppendingString:[NSString stringWithFormat:@"\n\n%@: %@", date, eventText]];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
