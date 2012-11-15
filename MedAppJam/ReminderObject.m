//
//  ReminderObject.m
//  MedAppJam
//
//  Created by acebula on 11/13/12.
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


//Initialization method
- (id) init : first:(NSString*) nameOfMed
                second:(NSString*) amountTake
                third:(NSString*) timeTake {
    if ( self = [super init] ) {
        [self setNameOfMedication: nameOfMed];
        [self setAmountToTake: amountTake];
        [self setTimeToTake: timeTake];
    }
    return self;
}

@end
