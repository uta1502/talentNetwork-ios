//
//  ConnectionViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 27/01/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "ConnectionViewController.h"
#import "ConnectionCustomCell.h"

@interface ConnectionViewController ()

@end

@implementation ConnectionViewController

static NSString * const reuseIdentifier = @"Cell";
    NSArray *names,*occu,*loca,*conn;
- (void)viewDidLoad {
    [super viewDidLoad];
    names = [[NSArray alloc] initWithObjects:@"Utkarsh Atri",@"Camilo Álvarez",@"Amit Gupta",@"Prerit Jain",@"Gopakumar",@"Abhishek ",@"Srushti Jain", nil];
    occu = [[NSArray alloc] initWithObjects:@"Instep Intern",@"Instep Intern",@"Intern",@"Intern",@"Project Manager",@"Specialist Programmer",@"Software Engineer",nil];
    loca = [[NSArray alloc] initWithObjects:@"Sydney",@"Chile",@"Jammu and Kashmir",@"New Delhi",@"Bangalore",@"Tirchi",@"Chennai", nil];
    conn = [[NSArray alloc] initWithObjects:@"35",@"10",@"20",@"25",@"35",@"15",@"45", nil];
    self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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
    return names.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ConnectionCustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.name.text = [names objectAtIndex:indexPath.row];
    cell.occupation.text =[occu objectAtIndex:indexPath.row];
    cell.location.text = [loca objectAtIndex:indexPath.row];
    cell.numberOfConnections.text = [conn objectAtIndex:indexPath.row];
    
    CALayer *layer = cell.layer;
    [layer setCornerRadius:10.0f];
    [layer setBorderColor:[UIColor colorWithWhite:0.8 alpha:1].CGColor];
    [layer setBorderWidth:1.0f];
    
    
    return cell;
}

-(UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0,2.5,0,2.5);
    
}


/*-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"You selected a cell in Connection's Layout !! :D hahahahahhaahahah");
}*/

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
