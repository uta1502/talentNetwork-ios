//
//  ProfileViewController.h
//  tn-ios
//
//  Created by Utkarsh Atri on 31/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileView.h"

@interface ProfileViewController : UIViewController <UIScrollViewDelegate>{
    IBOutlet UIScrollView *scroller;
}

@property (weak, nonatomic) IBOutlet UIView *searchBar;

@property (weak, nonatomic) IBOutlet ProfileView *dpContainerView;
@property (weak, nonatomic) IBOutlet ProfileView *currentPursuitsContainerView;
@property (weak, nonatomic) IBOutlet ProfileView *workExperienceContainerView;
@property (weak, nonatomic) IBOutlet ProfileView *accountsContainerView;
@property (weak, nonatomic) IBOutlet ProfileView *myConnections;

@property (weak, nonatomic) IBOutlet ProfileView *RegionView;
@property (weak, nonatomic) IBOutlet ProfileView *industryView;
@property (weak, nonatomic) IBOutlet ProfileView *containerView;

@end
