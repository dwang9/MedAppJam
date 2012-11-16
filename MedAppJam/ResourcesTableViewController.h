//
//  ResourcesTableViewController.h
//  MedAppJam
//
//  Created by jpuente on 11/13/12.
//  Copyright (c) 2012 AppJam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResourcesTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITableViewSection *GeneralMentalIllness;
@property (weak, nonatomic) IBOutlet UITableViewSection *Depression;
@property (weak, nonatomic) IBOutlet UITableViewSection *AnxietyDisorders;
@property (weak, nonatomic) IBOutlet UITableViewSection *EatingDisorders;
@property (weak, nonatomic) IBOutlet UITableViewSection *SubstanceAbuse;

@end
