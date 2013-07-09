//
//  KMRMGreenTheme.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMGreenTheme.h"

#import "KMRMTheme.h"

@implementation KMRMGreenTheme

- (void)configure
{
    // navigation bar
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:0.000 green:0.764 blue:0.000 alpha:1.000]];
}

- (void)themeLabel:(UILabel *)label type:(KMRMThemeLabelType)type
{
    switch (type)
    {
        case KMRMThemeLabelTypeArgumentTitle:
        {
            label.font = [UIFont fontWithName:@"Arial-BoldMT" size:17.0];
            label.textColor = [UIColor colorWithRed:0.000 green:0.322 blue:0.000 alpha:1.000];
        }
            break;
            
        case KMRMThemeLabelTypeArgumentDescription:
        {
            label.font = [UIFont fontWithName:@"Arial" size:14.0f];
            label.textColor = [UIColor colorWithRed:0.661 green:0.778 blue:0.215 alpha:1.000];
        }
            break;
            
        default:
            break;
    }
}

@end
