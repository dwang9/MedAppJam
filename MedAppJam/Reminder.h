//
//  Reminder.h
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReminderObject.h"

@interface Reminder : UIViewController <UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>{
    IBOutlet UITableView *tableview;
}

- (IBAction)PressViewExistingReminders:(UIButton *)sender;
- (IBAction)PressReturnToMedicationReminders:(UIButton *)sender;
- (IBAction)timePickerValueChanged:(id)sender;
- (IBAction)PressCreateNewReminder:(UIButton *)sender;
- (IBAction)pressAddReminder:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@property (weak, nonatomic) IBOutlet UITextField *MedicationName;
@property (weak, nonatomic) IBOutlet UITextField *AmountToTake;
@property (weak, nonatomic) IBOutlet UIDatePicker *TimeToTake;
@property (weak, nonatomic) IBOutlet UITableView *TableOfReminders;
@property (weak, nonatomic) IBOutlet UISwitch *monday;
@property (weak, nonatomic) IBOutlet UISwitch *tuesday;
@property (weak, nonatomic) IBOutlet UISwitch *wednesday;
@property (weak, nonatomic) IBOutlet UISwitch *thursday;
@property (weak, nonatomic) IBOutlet UISwitch *friday;
@property (weak, nonatomic) IBOutlet UISwitch *saturday;
@property (weak, nonatomic) IBOutlet UISwitch *sunday;
@property (nonatomic, retain) IBOutlet UITableView *tableview;

@property (weak, nonatomic) NSMutableArray *reminders;

@end
