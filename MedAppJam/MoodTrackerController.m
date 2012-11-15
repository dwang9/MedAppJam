//
//  MoodTrackerController.m
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodTrackerController.h"
#import "MoodInputController1.h"

@interface MoodTrackerController ()

@end

@implementation MoodTrackerController



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

- (IBAction)InputInformation:(id)sender {
    [self performSegueWithIdentifier:@"SetMoodInput1" sender: self];
    
}
@end
