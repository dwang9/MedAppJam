//
//  MoodInputController1.h
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry;

@interface MoodInputController1 : UIViewController
{
@private
    MoodEntry* entry;
}

@property (strong, nonatomic) MoodEntry* entry;
- (IBAction)cancel:(id)sender;
- (IBAction)ok:(id)sender;

@end
