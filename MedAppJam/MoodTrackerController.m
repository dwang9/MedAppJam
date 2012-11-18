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

@interface MoodTrackerController ()

@end

@implementation MoodTrackerController

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
    NSMutableArray* array = [[NSMutableArray alloc] init];
    [array addObject: entry];
    
    NSString* string = [NSString stringWithFormat:@"Date: %@", [[[array objectAtIndex: 0] entry ] date]];
    output.text = string;
}

- (IBAction)InputInformation:(id)sender {
    [self performSegueWithIdentifier:@"SetMoodInput1" sender: self];
    
}
- (void)viewDidUnload {
    output = nil;
    [super viewDidUnload];
}
@end
