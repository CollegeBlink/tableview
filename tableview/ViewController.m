//
//  ViewController.m
//  tableview
//
//  Created by Mark Dumes on 10/10/13.
//  Copyright (c) 2013 Mark Dumes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad
{
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Class" ofType:@"plist"];
    StudentComputer = [[NSArray alloc]initWithContentsOfFile:myListPath];
    NSLog(@"%@",StudentComputer);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [StudentComputer count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if( cell == nil )
    {
        NSLog(@"Cell Creation");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    //Set Data For each Cell
    cell.textLabel.text = [[StudentComputer objectAtIndex:indexPath.row]objectForKey:@"StudentName"];
    cell.detailTextLabel.text = [[StudentComputer objectAtIndex:indexPath.row]objectForKey:@"StudentComputer"];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    
    return cell;
    
}


@end
