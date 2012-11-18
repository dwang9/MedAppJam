//
//  MoodInputController3.h
//  MedAppJam
//
//  Created by App Jam on 11/14/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoodTrackerController.h"

@class MoodEntry;

@protocol MoodInputDelegate;

@interface MoodInputController3 : UIViewController <MoodInputDelegate>
{
@private
    MoodEntry* entry;
    UIViewController* rootController;
    id <MoodInputDelegate> delegate;
}


@property (strong, nonatomic) id <MoodInputDelegate> delegate;
@property (strong, nonatomic) MoodEntry* entry;
@property (strong, nonatomic) UIViewController* rootController;
- (IBAction)cancel:(id)sender;
- (IBAction)back:(id)sender;
- (IBAction)ok:(id)sender;

@end
