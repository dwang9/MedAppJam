//
//  MoodInputController2.h
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry, MoodInputController1;


@interface MoodInputController2 : UIViewController
{
@private
    MoodEntry* entry;
    MoodInputController1* rootController;
    IBOutlet UILabel *Label;
}
- (IBAction)cancel:(id)sender;
@property (strong, nonatomic) MoodInputController1* rootController;
@property (strong, nonatomic) MoodEntry* entry;
@property (strong, nonatomic) UILabel *Label;

@end
