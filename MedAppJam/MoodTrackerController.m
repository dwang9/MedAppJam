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
   // if (![arrayOfEntries containsObject: entry])
    //{
 
    [arrayOfEntries addObject: entry];

    //}
    [delegate saveArrayOfEntries: self.arrayOfEntries];

}

- (IBAction)returnToMenu:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)button:(id)sender {
    NSMutableString* string = [[NSMutableString alloc] init];
    for (MoodEntry* entry2 in arrayOfEntries)
    {
        [string appendString: [NSString stringWithFormat:@"Date: %@, Mood %d, Notes, %@", entry2.date, entry2.mood, entry2.notes]];
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
