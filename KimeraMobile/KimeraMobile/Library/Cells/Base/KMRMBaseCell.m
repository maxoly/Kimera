//
//  KMRMBaseCell.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMBaseCell.h"

@implementation KMRMBaseCell



#pragma mark - Layout Methods

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}



#pragma mark - UIResponder+Boscolo Methods

- (KMRMInterface *)interface
{
    return [[UIApplication sharedApplication] interface];
}

@end
