//
//  MoodInputController3.h
//  MedAppJam
//
//  Created by App Jam on 11/14/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry, MoodInputController1;

@interface MoodInputController3 : UIViewController
{
@private
    MoodEntry* entry;
    UIViewController* rootController;
}


@property (strong, nonatomic) MoodEntry* entry;
@property (strong, nonatomic) UIViewController* rootController;
- (IBAction)cancel:(id)sender;
- (IBAction)back:(id)sender;

@end
