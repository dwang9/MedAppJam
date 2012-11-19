//
//  RemoveEntryController.h
//  MedAppJam
//
//  Created by App Jam on 11/18/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MoodEntry;

@protocol RemoveEntryDelegate <NSObject>

- (void) removeEntry;

@end

@interface RemoveEntryController : UIViewController
{
    @private
    MoodEntry* entry;
}

@property (strong, nonatomic) MoodEntry* entry;
@property (weak) id <RemoveEntryDelegate> delegate;

@end
