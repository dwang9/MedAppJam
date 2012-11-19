//
//  MoodTrackerController.m
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodTrackerController.h"
#import "MoodInputController1.h"
#import "MoodEntry.h"
#import "AppDelegate.h"

@interface MoodTrackerController ()

@end

@implementation MoodTrackerController

@synthesize arrayOfEntries;
@synthesize delegate;
@synthesize output;
@synthesize contains;



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
    
    AppDelegate* appDelegate = (AppDelegate*) [UIApplication sharedApplication].delegate;
    self.arrayOfEntries = appDelegate.arrayOfEntries;
  
    self.delegate = (id) [[UIApplication sharedApplication] delegate];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"SetMoodInput1"])
    {
        MoodInputController1* controller1 = [segue destinationViewController];
        
        controller1.rootController = self;
        
        
    }
}



- (void) passEntry: (MoodEntry*) entry;
{
    if (self.arrayOfEntries.count == 0)
    {
        [self.arrayOfEntries addObject: entry];
    }
    else
    {
        // Check to see if the array contains an entry with the date that is trying to be added, if so, throw an error message
        self.contains = NO;
        for (MoodEntry* curEntry in self.arrayOfEntries)
        {
            if ([curEntry.date isEqualToDate: entry.date])
            {
                self.contains = YES;
            }
        }
        
        // If the an entry in the array has the same date as the entry trying to be added, an alert will show. If not
        // then the new entry will be added to the array
        if (!self.contains)
        {
            [self.arrayOfEntries addObject: entry];
            self.contains = NO;
        }
        else
        {
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle: @"Duplicate Entry Date" message: @"Your Mood Tracker already contains an entry with the same date. New entry was not added" delegate: nil cancelButtonTitle: @"OK" otherButtonTitles: nil];
            [alert show];
        }
    }
    
    
    
    
    // Creating a comparator and sort the array based on date
    NSComparator comparator = ^NSComparisonResult(MoodEntry* entry1, MoodEntry* entry2)
    {
        return[[entry1 date] compare: [entry2 date]];
    };
    [self.arrayOfEntries sortUsingComparator: comparator];
    
    // Send the arrayOfEntries field to appDelegate, so that it can be stored when the app closes
    [delegate saveArrayOfEntries: self.arrayOfEntries];

}

- (IBAction)returnToMenu:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)button:(id)sender {
    NSMutableString* string = [[NSMutableString alloc] init];
    for (MoodEntry* entry2 in arrayOfEntries)
    {
        [string appendString: [NSString stringWithFormat:@"Date: %@, Mood %d, Notes, %@ \r", entry2.date, entry2.mood, entry2.notes]];
        output.text = string;
    }
    
}

- (void)viewDidUnload {
    output = nil;
    [super viewDidUnload];
}


- (IBAction)InputInformation:(id)sender {
    [self performSegueWithIdentifier:@"SetMoodInput1" sender: self];
    
}



@end
