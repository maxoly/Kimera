//
//  KMRMBaseViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMBaseViewController.h"

@interface KMRMBaseViewController ()

@property (nonatomic, strong) KMRMDataModel *dataModel;

@end

@implementation KMRMBaseViewController

- (KMRMDataModel *)dataModel
{
    if (nil == _dataModel)
    {
        _dataModel = [[KMRMDataModel alloc] init];
    }
    
    return _dataModel;
}

@end
