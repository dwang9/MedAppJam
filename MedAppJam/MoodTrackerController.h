//
//  MoodTrackerController.h
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoodInputController3.h"

@class MoodEntry;

@interface MoodTrackerController : UIViewController <MoodInputDelegate>
{
@private
    IBOutlet UILabel *output;

    
}

@property (strong, nonatomic) IBOutlet UILabel *output;
- (IBAction)InputInformation:(id)sender;
- (void) passEntry: (MoodEntry*) entry;



@end
