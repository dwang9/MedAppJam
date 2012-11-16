//
//  ResourcesTableViewController.m
//  MedAppJam
//
//  Created by jpuente on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "ResourcesTableViewController.h"

@implementation ResourcesTableViewController
@synthesize GeneralMentalIllness;
@synthesize Depression;
@synthesize AnxietyDisorders;
@synthesize EatingDisorders;
@synthesize SubstanceAbuse;


- (IBAction)linkToMental1:(id)sender {
    
    //Link
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http:www.google.com"]];
    
}
- (void)viewDidUnload {
    [self setGeneralMentalIllness:nil];
    [self setDepression:nil];
    [self setAnxietyDisorders:nil];
    [self setEatingDisorders:nil];
    [self setSubstanceAbuse:nil];
    [super viewDidUnload];
}

-(void)generalLink:{
    
}
@end
