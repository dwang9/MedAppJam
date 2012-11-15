//
//  MoodInputController2.m
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodInputController2.h"
#import "MoodInputController1.h"
#import "MoodInputController3.h"
#import "MoodEntry.h"

@interface MoodInputController2 ()

@end

@implementation MoodInputController2
@synthesize entry;
@synthesize rootController;

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

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"SetMoodInput3"])
    {
        MoodInputController3* controller3 = [segue destinationViewController];
        
        
        
        controller3.entry = self.entry;
        controller3.rootController = self.rootController;
    }
}

- (IBAction)cancel:(id)sender {
    [rootController dismissModalViewControllerAnimated: YES];
}
- (IBAction)ok:(id)sender {
    [self performSegueWithIdentifier:@"SetMoodInput3" sender: self];
}

- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
