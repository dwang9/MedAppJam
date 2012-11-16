//
//  Resources.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "Resources.h"

@implementation Resources


@synthesize TextWindow;

- (void) viewDidLoad {
[TextWindow setText:@"List words or terms separated by commas"];
}

- (void)viewDidUnload {

    [self setTextWindow:nil];
    [super viewDidUnload];
}

@end
