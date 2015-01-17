//
//  TableViewController.m
//  Outter Space
//
//  Created by Shayne Stark on 1/16/15.
//  Copyright (c) 2015 Spark Apps, LLC. All rights reserved.
//

#import "TableViewController.h"
#import "AstronomicalData.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize planets;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    planets = [[NSMutableArray alloc] init];
    
    NSString *planet1 = @"Mercury";
    NSString *planet2 = @"Venus";
    NSString *planet3 = @"Earth";
    NSString *planet4 = @"Mars";
    NSString *planet5 = @"Jupitor";
    NSString *planet6 = @"Saturn";
    NSString *planet7 = @"Uranus";
    NSString *planet8 = @"Neptune";
    
    [planets addObject: planet1];
    [planets addObject: planet2];
    [planets addObject: planet3];
    [planets addObject: planet4];
    [planets addObject: planet5];
    [planets addObject: planet6];
    [planets addObject: planet7];
    [planets addObject: planet8];
    
//    NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] init];
//    NSString *firstColor = @"red";
//    [myDictionary setObject: firstColor forKey: @"firetruck color"];
//    [myDictionary setObject: @"blue" forKey: @"ocean color"];
//    [myDictionary setObject: @"yellow" forKey: @"star color"];
//    NSLog(@"%@", myDictionary);
//    
//    NSString *blueString = [myDictionary objectForKey: @"ocean color"];
//    NSLog(@"%@", blueString);
    
    NSNumber *mynumber = [NSNumber numberWithInt: 5];
    NSLog(@"%@", mynumber);
    NSNumber *floatNumber = [NSNumber numberWithFloat: 3.14];
    NSLog(@"%@", floatNumber);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    [cell.textLabel setText:[planets objectAtIndex: indexPath.row]];
    
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
