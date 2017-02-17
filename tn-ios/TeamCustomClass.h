//
//  TeamCustomClass.h
//  tn-ios
//
//  Created by Utkarsh Atri on 30/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeamCustomClass : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoTeam;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *occupation;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *numberOfConnections;


@end
