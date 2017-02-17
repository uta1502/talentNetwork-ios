//
//  TapToViewPeopleViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 10/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "TapToViewPeopleViewController.h"
#import "TapToViewCustomCell.h"

@interface TapToViewPeopleViewController ()

@end

@implementation TapToViewPeopleViewController

static NSString * const reuseIdentifier = @"tapToSeePeople";

NSArray *namesPeople,*occupationPeople,*locationPeople,*connectionPeople;
- (void)viewDidLoad {
    [super viewDidLoad];
    namesPeople = [[NSArray alloc] initWithObjects:@"Dr Vishal Sikka",@"Navin Budhiraja",@"Pravin Rao",@"Gopakumar",@"Abhishek Kaushik",nil];
    occupationPeople = [[NSArray alloc] initWithObjects:@"Managing Director & CEO, Infosys",@"CTO Infosys",@"Chief Operating Officer",@"Project Manager",@"Specialist Programmer",nil];
    locationPeople = [[NSArray alloc] initWithObjects:@"Bangalore",@"Bangalore",@"Bangalore",@"Bangalore", @"Bangalore",nil];
    connectionPeople = [[NSArray alloc] initWithObjects:@"35",@"10",@"20",@"25",@"40", nil];
    self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return namesPeople.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TapToViewCustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
   cell.namePeople.text = [namesPeople objectAtIndex:indexPath.row];
    cell.occupationPeople.text = [occupationPeople objectAtIndex:indexPath.row];
    cell.locationPeople.text = [locationPeople objectAtIndex:indexPath.row];
    cell.numberOfConnectionsPeople.text = [connectionPeople objectAtIndex:indexPath.row];
    
    CALayer *layer = cell.layer;
    [layer setCornerRadius:10.0f];
    [layer setBorderColor:[UIColor colorWithWhite:0.8 alpha:1].CGColor];
    [layer setBorderWidth:1.0f];
    
    
    // Configure the cell
    
    return cell;
}

-(UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0,2.5,0,2.5);
    
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */

@end
