//
//  RemoveEntryController.m
//  MedAppJam
//
//  Created by App Jam on 11/18/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "RemoveEntryController.h"

@interface RemoveEntryController ()

@end

@implementation RemoveEntryController

@synthesize entry;
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

@end
