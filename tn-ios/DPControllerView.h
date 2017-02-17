//
//  DPControllerView.h
//  tn-ios
//
//  Created by Utkarsh Atri on 01/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPControllerView : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *occupation;
@property (weak, nonatomic) IBOutlet UILabel *role;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *numberOfConnections;

@end
