//
//  ViewController.h
//  tableview
//
//  Created by Mark Dumes on 10/10/13.
//  Copyright (c) 2013 Mark Dumes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *StudentComputer;
    NSArray *StudentName;
}

@property(nonatomic,retain) IBOutlet UITableView *myTableView;

@end
