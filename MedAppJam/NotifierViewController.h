//
//  NotifierViewController.h
//  Notifier
//
//  Created by acebula on 11/16/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotifierViewController : UIViewController</*UITableViewDataSource,UITableViewDelegate,*/UITextFieldDelegate> {
//	IBOutlet UITableView *tableview;
	IBOutlet UIDatePicker *datePicker;
	IBOutlet UITextField *eventText;
}

//@property (nonatomic, retain) IBOutlet UITableView *tableview;
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UITextField *eventText;

- (IBAction) scheduleAlarm:(id) sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

