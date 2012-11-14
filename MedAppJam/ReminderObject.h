//
//  ReminderObject.h
//  MedAppJam
//
//  Created by acebula on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReminderObject : NSObject{
    NSString* nameOfMedication; //Name of medication
    NSString* amountToTake;     //Amount to take
    NSString* timeToTake;       //Time to take
}

//Getters
- (NSString*) nameOfMedication;
- (NSString*) amountToTake;
- (NSString*) timeToTake;

//Setters
- (void) setNameOfMedication: (NSString*)input;
- (void) setAmountToTake: (NSString*)input;
- (void) setTimeToTake: (NSString*)input;

@end