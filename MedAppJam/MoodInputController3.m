//
//  MoodInputController3.m
//  MedAppJam
//
//  Created by App Jam on 11/14/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "MoodInputController3.h"
#import "MoodInputController2.h"
#import "MoodEntry.h"
#import "MoodTrackerController.h"

@interface MoodInputController3 ()

@end

@implementation MoodInputController3

@synthesize entry;
@synthesize rootController;
@synthesize delegate;

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
    [rootController dismissModalViewControllerAnimated:YES];
}
- (IBAction)back:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)ok:(id)sender {
    [self.delegate passEntry: self.entry];
    
    [rootController dismissModalViewControllerAnimated:YES];
}
@end
