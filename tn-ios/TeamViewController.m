//
//  TeamViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 30/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamCustomClass.h"
@interface TeamViewController ()

@end

@implementation TeamViewController

static NSString * const reuseIdentifier = @"cell";
NSArray *namesTeam,*occupationTeam,*locationTeam,*connectionTeam;
- (void)viewDidLoad {
    [super viewDidLoad];
    namesTeam = [[NSArray alloc] initWithObjects:@"Utkarsh Atri",@"Camilo Álvarez",@"Amit Gupta",@"Prerit Jain",@"Gopakumar",@"Abhishek ",@"Kate Bell", nil];
    occupationTeam = [[NSArray alloc] initWithObjects:@"Instep Intern",@"Instep Intern",@"Intern",@"Intern",@"Project Manager",@"Specialist Programmer",@"Software Engineer",nil];
    locationTeam = [[NSArray alloc] initWithObjects:@"Sydney",@"Chile",@"Jammu and Kashmir",@"New Delhi",@"Bangalore",@"Tirchi",@"Chennai", nil];
    connectionTeam = [[NSArray alloc] initWithObjects:@"35",@"10",@"20",@"25",@"35",@"15",@"45", nil];
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

    return namesTeam.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TeamCustomClass *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.name.text = [namesTeam objectAtIndex:indexPath.row];
    cell.occupation.text = [occupationTeam objectAtIndex:indexPath.row];
    cell.location.text = [locationTeam objectAtIndex:indexPath.row];
    cell.numberOfConnections.text = [connectionTeam objectAtIndex:indexPath.row];
    
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
