//
//  DPControllerView.m
//  tn-ios
//
//  Created by Utkarsh Atri on 01/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "DPControllerView.h"

@interface DPControllerView ()

@end

@implementation DPControllerView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.name.text = @"Utkarsh Atri";
    self.occupation.text = @"Engagement Manager";
    self.role.text = @"FSSL";
    self.location.text = @"New York City, NY";
    self.numberOfConnections.text = @"25";
    
    
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
