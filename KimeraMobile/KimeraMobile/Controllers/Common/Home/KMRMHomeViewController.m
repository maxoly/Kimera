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
    
    self.title = NSLocalizedString(@"Kimera", nil);
    self.sections = @[ @[ @"Breakpoints", @"ARC Issues", @"MRC Issues" ] ];
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
    
    cell.textLabel.text = [[self.sections objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"Some other text to show";
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Debugging";
}

@end
