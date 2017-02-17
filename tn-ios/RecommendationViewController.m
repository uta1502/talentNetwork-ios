//
//  RecommendationViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 10/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "RecommendationViewController.h"
#import "ReccomendationCustomCell.h"

@interface RecommendationViewController ()

@end

@implementation RecommendationViewController

static NSString * const reuseIdentifier = @"recommendationCell";
NSArray *namesRecommendation,*occupationRecommendation,*locationRecommendation,*connectionRecommendation;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    namesRecommendation = [[NSArray alloc] initWithObjects:@"Utkarsh Atri",@"Camilo Álvarez",@"Amit Gupta", nil];
    occupationRecommendation= [[NSArray alloc] initWithObjects:@"Instep Intern",@"Instep Intern",@"Intern",nil];
    locationRecommendation = [[NSArray alloc] initWithObjects:@"Sydney",@"Chile",@"Jammu and Kashmir", nil];
    connectionRecommendation = [[NSArray alloc] initWithObjects:@"35",@"10",@"20", nil];
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
    return namesRecommendation.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ReccomendationCustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
   
        cell.nameRecc.text = [namesRecommendation objectAtIndex:indexPath.row];
        cell.occupationRecc.text = [occupationRecommendation objectAtIndex:indexPath.row];
        cell.locationRecc.text = [locationRecommendation objectAtIndex:indexPath.row];
        cell.numberOfConnectionsRecc.text = [connectionRecommendation objectAtIndex:indexPath.row];
    
        CALayer *layer = cell.layer;
        [layer setCornerRadius:10.0f];
        [layer setBorderColor:[UIColor colorWithWhite:0.8 alpha:1].CGColor];
        [layer setBorderWidth:1.0f];
        
        return cell;
  
}
-(UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0,5.5,0,5.5);
    
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
