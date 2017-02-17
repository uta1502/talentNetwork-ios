//
//  ProfileViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 31/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "ProfileViewController.h"
#import "ProfileView.h"
#import "CurrentPursuitsCell.h"
#import <QuartzCore/QuartzCore.h>

@interface ProfileViewController ()


@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(375,1700)];
    scroller.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    self.dpContainerView.layer.cornerRadius=8.0;
    self.dpContainerView.layer.masksToBounds=YES;
    
    self.currentPursuitsContainerView.layer.cornerRadius=8.0;
    self.currentPursuitsContainerView.layer.masksToBounds=YES;
    
    self.workExperienceContainerView.layer.cornerRadius=8.0;
    self.workExperienceContainerView.layer.masksToBounds=YES;
    
    self.accountsContainerView.layer.cornerRadius=8.0;
    self.accountsContainerView.layer.masksToBounds=YES;
    
    self.RegionView.layer.cornerRadius=8.0;
    self.RegionView.layer.masksToBounds=YES;
    
    self.industryView.layer.cornerRadius=8.0;
    self.industryView
    .layer.masksToBounds=YES;
    
    self.myConnections.layer.cornerRadius=8.0;
    self.myConnections.layer.masksToBounds=YES;

     self.containerView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_Pattern.png"]];
  //  UITextField *searchBarTextField = nil;
    
   /* for (UIView *subView in self.searchBar.subviews){
        for (UIView *secondLeveSubView in subView.subviews){
            if ([secondLeveSubView isKindOfClass:[UITextField class]])
            {
                searchBarTextField = (UITextField *)secondLeveSubView;
                break;
            }
        }
    }*/
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
