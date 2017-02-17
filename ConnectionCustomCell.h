//
//  ConnectionCustomCell.h
//  tn-ios
//
//  Created by Utkarsh Atri on 27/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnectionCustomCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *Picuture;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *occupation;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *numberOfConnections;

@end
