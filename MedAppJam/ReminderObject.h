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
    NSArray* daysToTake;
}

//Getters
- (NSString*) nameOfMedication;
- (NSString*) amountToTake;
- (NSString*) timeToTake;
- (NSArray*) daysToTake;

//Setters
- (void) setNameOfMedication: (NSString*)input;
- (void) setAmountToTake: (NSString*)input;
- (void) setTimeToTake: (NSString*)input;
- (void) setDaysToTake: (NSArray*)input;

@end