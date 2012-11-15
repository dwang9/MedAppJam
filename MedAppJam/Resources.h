//
//  Resources.h
//  MedAppJam
//
//  Created by dwang9 on 11/11/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Resources : UIViewController
- (IBAction)pressOK:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UISwitch *generalmental;
@property (weak, nonatomic) IBOutlet UISwitch *depression;
@property (weak, nonatomic) IBOutlet UISwitch *anxietyDisoreders;
@property (weak, nonatomic) IBOutlet UISwitch *eatingDisorders;
@property (weak, nonatomic) IBOutlet UISwitch *SubstanceAbuse;


@end
