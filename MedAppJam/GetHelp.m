//
//  GetHelp.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "GetHelp.h"

@implementation GetHelp
{
    
}

- (IBAction)emergencyCall:(UIButton *)sender
{
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test Alert"
                                                    message:@"Are you sure?"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Yes",nil];
    [alert show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //NSLog(@"%d", buttonIndex);
    if(buttonIndex==1)
    {
        
        NSString *phoneNumber = @"telprompt://411";
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
    }
    
    
}

@end
