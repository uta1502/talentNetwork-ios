//
//  WorkExperienceViewController.m
//  tn-ios
//
//  Created by Utkarsh Atri on 01/02/17.
//  Copyright © 2017 Utkarsh Atri. All rights reserved.
//

#import "WorkExperienceViewController.h"
#import "WorkExperienceCustomCell.h"

@interface WorkExperienceViewController ()

@end

@implementation WorkExperienceViewController

NSArray *expe,*comp,*sdate,*edate,*calc;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    expe = [[NSArray alloc]initWithObjects:@"Consulting",@"Intern",@"Graduate Engineering Tranee", nil];
    comp = [[NSArray alloc]initWithObjects:@"Infosys",@"Instep Infosys",@"Tata Motors", nil];
    sdate = [[NSArray alloc]initWithObjects:@"1999",@"2016",@"1996", nil];
    edate= [[NSArray alloc]initWithObjects:@"2016",@"2016",@"1997", nil];
    calc = [[NSArray alloc]initWithObjects:@"(17 Years)",@"(0 year)",@"(1 year)", nil];
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
    return expe.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WorkExperienceCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"workExpCell" forIndexPath:indexPath];
    cell.experience.text = [expe objectAtIndex:indexPath.row];
    cell.company.text = [comp objectAtIndex:indexPath.row];
    cell.startDate.text = [sdate objectAtIndex:indexPath.row];
    cell.endDate.text = [edate objectAtIndex:indexPath.row];
    cell.totalYears.text = [calc objectAtIndex:indexPath.row];
   
    
    // Configure the cell...
    
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
