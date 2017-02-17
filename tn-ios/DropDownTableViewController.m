//
//  DropDownTableViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 10/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "DropDownTableViewController.h"
#import "DropDrownCustomCell.h"

@interface DropDownTableViewController ()

@end

@implementation DropDownTableViewController

NSArray *ddname;
NSMutableArray *ddphoto;
- (void)viewDidLoad {
    [super viewDidLoad];
    ddphoto = [NSMutableArray arrayWithArray:@[@"call.png",@"messages-icon.png",@"email.jpg"]];
    ddname = [[NSArray alloc]initWithObjects:@"Call",@"Text",@"Email", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return ddname.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DropDrownCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dropDownCell" forIndexPath:indexPath];
    cell.dropDownLabel.text = [ddname objectAtIndex:indexPath.row];
    cell.dropDownPhoto.image =[UIImage imageNamed:ddphoto[indexPath.row]];
    // Configure the cell...
    cell.dropDownLabel.tag = indexPath.row;
    
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(self.tableView.indexPathForSelectedRow.row == 0){
        NSLog(@"Call selected!!");
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:1234"] options:@{} completionHandler:nil];
    }
    else if (self.tableView.indexPathForSelectedRow.row == 1){
        NSLog(@"Text Selected!!");
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms:Gopakumar"]options:@{} completionHandler:nil];

    }
    else{
        NSLog(@"Email Selected!!");
    }
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
