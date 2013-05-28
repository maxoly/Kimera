//
//  KMRMTableViewController.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KMRMBaseViewController.h"

@interface KMRMTableViewController : KMRMBaseViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *sections;

@end
