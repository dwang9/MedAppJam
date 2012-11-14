//
//  Resources.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "Resources.h"

@implementation Resources
@synthesize generalmental;
@synthesize depression;
@synthesize anxietyDisoreders;
@synthesize eatingDisorders;
@synthesize SubstanceAbuse;
- (IBAction)pressOK:(UIButton *)sender {
    
    if (generalmental.off){
        [GeneralMental setHidden:YES];
    }
    
    if (depression.off){
        [Depression setHidden:YES];
    }
    
    if (anxietyDisoreders.off){
        [AnxietyDisorders setHidden:YES];
}
    
}
- (void)viewDidUnload {
    [self setGeneralmental:nil];
    [self setDepression:nil];
    [self setAnxietyDisoreders:nil];
    [self setEatingDisorders:nil];
    [self setSubstanceAbuse:nil];
    [super viewDidUnload];
}
@end
