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
        dispatch_async(dispatch_get_main_queue(), ^
        {
            self.sections = topics;
            [self.tableView reloadData];
        });
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellClass = NSStringFromClass([KMRMHomeCell class]);
    
    KMRMHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:cellClass];
    
    if (nil == cell)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:cellClass owner:nil options:nil] lastObject];
    }
    
    KMRMTopic *topic = [self.sections objectAtIndex:indexPath.section];
    KMRMArgument *argument = [topic.arguments objectAtIndex:indexPath.row];
    
    [cell setupWithArgument:argument];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    KMRMTopic *topic = [self.sections objectAtIndex:section];
    return topic.name;
}



#pragma mark - UITableViewDelegate Methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    KMRMTopic *topic = [self.sections objectAtIndex:indexPath.section];
    KMRMArgument *argument = [topic.arguments objectAtIndex:indexPath.row];
    
    UIViewController *viewController = [[argument.viewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
