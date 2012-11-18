//
//  MoodInputController2.h
//  MedAppJam
//
//  Created by App Jam on 11/13/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry;


@interface MoodInputController2 : UIViewController
{
@private
    MoodEntry* entry;
    UIViewController* rootController;
}

@property (strong, nonatomic) UIViewController* rootController;
@property (strong, nonatomic) MoodEntry* entry;
- (IBAction)cancel:(id)sender;
- (IBAction)ok:(id)sender;
- (IBAction)back:(id)sender;

@end
