//
//  Reminder.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "Reminder.h"

@implementation Reminder

//When adding first reminder, create an array of reminders
//Each reminder needs: Medication Name, Amount to Take, and Time to Take
//When adding more reminders, add them to the end of the array (which will be unsorted for now)
//When viewing existing reminders, fetch the array and list each entry in the table

@synthesize MedicationName; //The name of the medication
@synthesize AmountToTake;   //The amount to take
@synthesize TimeToTake;     //When to take it - Hour, Minute, AM/PM
@synthesize TableOfReminders;


NSMutableArray *reminders;

- (IBAction)PressAddNewReminder:(UIButton *)sender {
    //Go to Add New Reminder Page
    
    //If no reminders already exist, then create the array of reminders with the information entered in the fields as the first value
    if([reminders count] == 0){
        //Create new reminder
        
        ReminderObject *newReminder;
        
        newReminder = [ReminderObject alloc];
        
        newReminder = [newReminder init];
        
        [newReminder setNameOfMedication: @"Prozac"];
        [newReminder setAmountToTake: @"20 mg"];
        [newReminder setTimeToTake: @"2:00 PM"];
        
        //Use it as the first element in the new array
        reminders = [NSArray arrayWithObjects: newReminder, nil];
    }
    //Else add a new reminder with the information entered in the fields to the end of the array
    else{
        //Create new reminder
        
        ReminderObject *newReminder;
        
        newReminder = [ReminderObject alloc];
        
        newReminder = [newReminder init];
        
        [newReminder setNameOfMedication: @"Prozac"];
        [newReminder setAmountToTake: @"20 mg"];
        [newReminder setTimeToTake: @"2:00 PM"];
        
        //Add it to the end of the array
        [reminders addObject: newReminder];
    }
}

- (IBAction)PressViewExistingReminders:(UIButton *)sender {
    //Go to View Eisting Reminders Page
    
    //If no reminders already exist, the table will be empty
    if([reminders count] == 0){
        
    }
    //Else the table will list each existing reminder
    else{
        
    }
}

- (IBAction)PressReturnToMedicationReminders:(UIButton *)sender {
    //Return the user to the medication reminders main page
}

- (void)viewDidUnload {
    [self setMedicationName:nil];
    [self setAmountToTake:nil];
    [self setTimeToTake:nil];
    [self setTableOfReminders:nil];
    [super viewDidUnload];
}
@end
