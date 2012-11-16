//
//  AppDelegate.h
//  MedAppJam
//
//  Created by AppJam on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NotifierViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    NotifierViewController *viewController;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet NotifierViewController *viewController;

@end
