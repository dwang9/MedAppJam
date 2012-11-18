//
//  Reminder.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
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
//The table that will be displayed to the user if he chooses to view existing reminders
@synthesize TableOfReminders;
//Days of the week - the user will be able to specify if he only wants the reminder to occur on certain days
@synthesize monday;
@synthesize tuesday;
@synthesize wednesday;
@synthesize thursday;
@synthesize friday;
@synthesize saturday;
@synthesize sunday;
@synthesize reminders;
@synthesize tableview;

- (void) viewWillAppear:(BOOL)animated {
    [self.tableview reloadData];
}


- (IBAction)pressAddReminder:(id)sender {
   //This is just to go to the add a reminder page - not where the reminder is actually created. See PressCreateNewReminder for that.
    
}

- (IBAction)PressViewExistingReminders:(UIButton *)sender {
    //Go to View Eisting Reminders Page
    
    //Display table w/ existing reminders
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }

    // Configure the cell...

	NSArray *notificationArray = [[UIApplication sharedApplication] scheduledLocalNotifications];
	UILocalNotification *notif = [notificationArray objectAtIndex:indexPath.row];

    [cell.textLabel setText:notif.alertBody];
	[cell.detailTextLabel setText:[notif.fireDate description]];

    return cell;
}

- (IBAction)PressReturnToMedicationReminders:(UIButton *)sender {
    //Return the user to the medication reminders main page
}


- (IBAction)PressCreateNewReminder:(UIButton *)sender {
    //If no reminders already exist, then create the array of reminders with the information entered in the fields as the first value
    if([reminders count] == 0){
        //Create new reminder
        
        ReminderObject *newReminder;
        
        newReminder = [ReminderObject alloc];
        
        newReminder = [newReminder init];
        
        //Change this to use actual values from the fields/picker
        [newReminder setNameOfMedication: @"Prozac"];
        [newReminder setAmountToTake: @"20 mg"];
        [newReminder setTimeToTake: @"2:00 PM"];
        
        //Use it as the first element in the new array
        reminders = [NSArray arrayWithObjects: newReminder, nil];
        
        //Now create an actual reminder in the phone
    }
    //Else add a new reminder with the information entered in the fields to the end of the array
    else{
        //Create new reminder
        
        ReminderObject *newReminder;
        
        newReminder = [ReminderObject alloc];
        
        newReminder = [newReminder init];
        
        //Change this to take actual values from the fields/picker
        [newReminder setNameOfMedication: @"Wellbutrin"];
        [newReminder setAmountToTake: @"100 mg"];
        [newReminder setTimeToTake: @"7:00 PM"];
        
        //Add it to the end of the array
        [reminders addObject: newReminder];
        
        //Now create an actual reminder in the phone
    }

}

- (IBAction)timePickerValueChanged:(id)sender {

}

//this helps the keyboard disappear when the user clicks return
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

- (void)viewDidUnload {
    self.MedicationName.delegate = self;
    self.AmountToTake.delegate = self;
    [self setMedicationName:nil];
    [self setAmountToTake:nil];
    [self setTimeToTake:nil];
    [self setTableOfReminders:nil];
    [self setMonday:nil];
    [self setTuesday:nil];
    [self setWednesday:nil];
    [self setThursday:nil];
    [self setFriday:nil];
    [self setSaturday:nil];
    [self setSunday:nil];
    tableview = nil;
    [super viewDidUnload];
}
@end
