//
//  MoodInputController2.m
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodInputController2.h"
#import "MoodInputController1.h"
#import "MoodEntry.h"

@interface MoodInputController2 ()

@end

@implementation MoodInputController2
@synthesize entry;
@synthesize rootController;
@synthesize Label;

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

- (IBAction)cancel:(id)sender {
    Label.text = [NSString stringWithFormat:@"%@", entry.date];
    //[rootController dismissModalViewControllerAnimated:YES];
}
- (void)viewDidUnload {
    Label = nil;
    [super viewDidUnload];
}
@end
