//
//  MoodInputController1.m
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodInputController1.h"
#import "MoodInputController2.h"
#import "MoodEntry.h"

@interface MoodInputController1 ()

@end

@implementation MoodInputController1
@synthesize entry;
@synthesize datePicker;


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
    datePicker = nil;
    [super viewDidUnload];
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (([[segue identifier] isEqualToString: @"SetMoodInput2"])
        )
    {
        MoodInputController2* controller2 = [segue destinationViewController];
        
        NSDate* date = datePicker.date;
        entry.date = date;
        NSLog(@"%@", entry.date);

        
        // Pass the entry along to the second input screen
        controller2.entry = self.entry;
        controller2.rootController = self;
    }
}

- (IBAction)cancel:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)ok:(id)sender {
    
    [self performSegueWithIdentifier: @"SetMoodInput2" sender:self];
}

@end
