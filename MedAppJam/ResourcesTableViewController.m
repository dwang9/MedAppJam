//
//  ResourcesTableViewController.m
//  MedAppJam
//
//  Created by jpuente on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "ResourcesTableViewController.h"

@implementation ResourcesTableViewController



- (IBAction)linkToMental1:(id)sender {
    
    //Link
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http:www.google.com"]];
    
}
- (void)viewDidUnload {

    [super viewDidUnload];
}

@end
