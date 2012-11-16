//
//  Resources.m
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "Resources.h"

@implementation Resources

- (IBAction)MentalHealthScreeningsButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.mentalhealthscreening.org/screening/?keyword=UCIRVINE"]];
}

- (IBAction)NIMHButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.nimh.nih.gov/index.shtml"]];
}

- (IBAction)NIMHDepressionButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.nimh.nih.gov/health/topics/depression/index.shtml"]];
}

- (IBAction)NIMHAnxietyButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.nimh.nih.gov/health/topics/anxiety-disorders/index.shtml"]];
}

- (IBAction)ADAAButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.adaa.org/"]];
}

- (IBAction)SAMHSAButton:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"http://www.samhsa.gov/"]];
}
@end
