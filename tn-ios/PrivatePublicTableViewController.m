//
//  PrivatePublicTableViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 06/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "PrivatePublicTableViewController.h"
#import "PrivatePublicCustomCell.h"
#import "CurrentPursuitsTableViewController.h"

@interface PrivatePublicTableViewController ()

@property (strong, nonatomic) PrivatePublicCustomCell *custom;
@property (strong, nonatomic) CurrentPursuitsTableViewController *cellContent;

@end

@implementation PrivatePublicTableViewController
NSArray *pursuitsEdit;

- (void)viewDidLoad {
    [super viewDidLoad];
   

    pursuitsEdit = [[NSArray alloc]initWithObjects:@"Market research and strategic plannig for epicor",@"Expertise in sales strategy, business and project/solution delivery",@"Orchestrating the entire sales to clkjasosure for Dansk Supermarket",@"Solution Preparation Proposal based on Customers Requirements", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (IBAction)switchPressed:(id)sender {
   if(_custom.editSwitch.isOn == YES)
       NSLog(@"Switch is turned on !!! \n");
    else if(_custom.editSwitch.isOn == NO)
        NSLog(@"Switch is turned off !! \n");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return pursuitsEdit.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PrivatePublicCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pursuitsCell" forIndexPath:indexPath];
    cell.editPursuits.text = [pursuitsEdit objectAtIndex:indexPath.row];
    return cell;
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
