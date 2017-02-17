//
//  WorkExperienceCustomCell.h
//  tn-ios
//
//  Created by Utkarsh Atri on 01/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkExperienceCustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *experience;
@property (weak, nonatomic) IBOutlet UILabel *company;
@property (weak, nonatomic) IBOutlet UILabel *startDate;
@property (weak, nonatomic) IBOutlet UILabel *endDate;
@property (weak, nonatomic) IBOutlet UILabel *totalYears;

@end
