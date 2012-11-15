//
//  Reminder.h
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReminderObject.h"

@interface Reminder : UIViewController

- (IBAction)PressAddNewReminder:(UIButton *)sender;
- (IBAction)PressViewExistingReminders:(UIButton *)sender;
- (IBAction)PressReturnToMedicationReminders:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *MedicationName;
@property (weak, nonatomic) IBOutlet UITextField *AmountToTake;
@property (weak, nonatomic) IBOutlet UIDatePicker *TimeToTake;
@property (weak, nonatomic) IBOutlet UITableView *TableOfReminders;

@end
