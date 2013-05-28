//
//  KMRMTableViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMTableViewController.h"

@interface KMRMTableViewController ()

@end

@implementation KMRMTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [self setSections:nil];
    [super didReceiveMemoryWarning];
}



#pragma mark - UITableViewDataSource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.sections objectAtIndex:section] count];
}

@end
