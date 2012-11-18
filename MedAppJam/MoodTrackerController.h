//
//  MoodTrackerController.h
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry;

@protocol MoodInputDelegate <NSObject>
- (void) passEntry: (MoodEntry*) entry;
@end

@interface MoodTrackerController : UIViewController
{
    @private
    IBOutlet UILabel *output;

    
}

@property (strong, nonatomic) IBOutlet UILabel *output;
- (IBAction)InputInformation:(id)sender;



@end
