//
//  NewEventViewController.h
//  AOC2_Week3
//
//  Created by Bodunrin Ladele on 2/20/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol eventDelegate <NSObject>
@required
-(void)createdEvent:(NSString*)eventText getEvent:(NSString *)date;

@end

@interface NewEventViewController : UIViewController
{

}


@property id delegate;


@property IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


@property (weak, nonatomic) IBOutlet UIButton *save;


-(IBAction)saveEvent:(id)sender;
-(IBAction)hideKeyboard:(id)sender;

@end


NSString *captured;

