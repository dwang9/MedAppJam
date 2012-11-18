//
//  ReminderObject.m
//  MedAppJam
//
//  Created by acebula on 11/13/12.
//  Property of Jesse Puente, Milin Shah, Anna Cebula, Derek Wang, and Tom Brown.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import "ReminderObject.h"

@implementation ReminderObject

//Get nameOfMedication
- (NSString*) nameOfMedication {
    return nameOfMedication;
}

//Get amountToTake
- (NSString*) amountToTake {
    return amountToTake;
}

//Get timeToTake
- (NSString*) timeToTake {
    return timeToTake;
}

- (NSArray*) daysToTake {
    return daysToTake;
}


//Set nameOfMedication
- (void) setNameOfMedication:(NSString *)input{
    nameOfMedication = input;
}

//Set amountToTake
- (void) setAmountToTake:(NSString *)input{
    amountToTake = input;
}

//Set timeToTake
- (void) setTimeToTake:(NSString *)input{
    timeToTake = input;
}

- (void) setDaysToTake:(NSArray *)input{
    daysToTake = input;
}


//Initialization method
- (id) init :   first:(NSString*) nameOfMed
                second:(NSString*) amountTake
                third:(NSString*) timeTake
                fourth:(NSArray*) daysToTake;
{
    if ( self = [super init] ) {
        [self setNameOfMedication: nameOfMed];
        [self setAmountToTake: amountTake];
        [self setTimeToTake: timeTake];
        [self setDaysToTake:daysToTake];
    }
    return self;
}

@end
