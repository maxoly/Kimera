//
//  KMRMHomeViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/27/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMHomeViewController.h"

@interface KMRMHomeViewController ()

@end

@implementation KMRMHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // text
    self.title = NSLocalizedString(@"Kimera", nil);

    // load topics
    [self.dataModel getTopics:^(NSArray *topics)
    {
        self.sections = topics;
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * kHomeCellIdentifier = @"HomeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kHomeCellIdentifier];
    
    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kHomeCellIdentifier];
    }
    
    KMRMTopic *topic = [self.sections objectAtIndex:indexPath.section];
    KMRMArgument *argument = [topic.arguments objectAtIndex:indexPath.row];
    
    cell.textLabel.text = argument.name;
    cell.detailTextLabel.text = argument.detail;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    KMRMTopic *topic = [self.sections objectAtIndex:section];
    return topic.name;
}



#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    KMRMTopic *topic = [self.sections objectAtIndex:indexPath.section];
    KMRMArgument *argument = [topic.arguments objectAtIndex:indexPath.row];
    
    UIViewController *viewController = [[argument.viewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
