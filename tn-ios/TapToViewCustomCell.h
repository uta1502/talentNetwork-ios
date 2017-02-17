//
//  TapToViewCustomCell.h
//  tn-ios
//
//  Created by Utkarsh Atri on 10/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapToViewCustomCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoPeople;
@property (weak, nonatomic) IBOutlet UILabel *namePeople;
@property (weak, nonatomic) IBOutlet UILabel *occupationPeople;
@property (weak, nonatomic) IBOutlet UILabel *locationPeople;
@property (weak, nonatomic) IBOutlet UILabel *numberOfConnectionsPeople;


@end
