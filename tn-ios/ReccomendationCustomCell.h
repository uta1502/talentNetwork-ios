//
//  ReccomendationCustomCell.h
//  tn-ios
//
//  Created by Utkarsh Atri on 10/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReccomendationCustomCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoRecc;
@property (weak, nonatomic) IBOutlet UILabel *nameRecc;
@property (weak, nonatomic) IBOutlet UILabel *occupationRecc;
@property (weak, nonatomic) IBOutlet UILabel *locationRecc;
@property (weak, nonatomic) IBOutlet UILabel *numberOfConnectionsRecc;

@end
