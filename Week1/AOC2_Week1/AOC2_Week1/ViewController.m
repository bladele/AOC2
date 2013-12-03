//
//  ViewController.m
//  AOC2_Week1
//
//  Created by Bodunrin Ladele on 11/26/13.
//  Copyright (c) 2013 bladele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //create a bike & set price
    streetBike *grom = (streetBike*)[BikeFactory createNewBike:STREET];
    [grom setTotalCost:3000];
    [grom setDurrationOfLoan:36];
    
    if (grom != nil) {
        NSArray *gromSpecks = [[NSArray alloc] initWithObjects:@"street", @"engine size", nil];
        [grom setEngineSize:gromSpecks];
        
        NSLog(@"You created a bike with the specks %@", [grom engineSize]);
        NSLog(@"%@", grom.features);
        
        [grom calculateMonthlyPayment];
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
