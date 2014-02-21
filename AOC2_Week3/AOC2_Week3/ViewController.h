//
//  ViewController.h
//  AOC2_Week3
//
//  Created by Bodunrin Ladele on 2/20/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewEventViewController.h"

@interface ViewController : UIViewController<eventDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UITextView *allEvents;


@end
