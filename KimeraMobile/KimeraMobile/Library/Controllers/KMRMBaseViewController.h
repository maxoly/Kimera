//
//  KMRMBaseViewController.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KMRMDataModel.h"

@interface KMRMBaseViewController : UIViewController

@property (nonatomic, readonly, strong) KMRMDataModel *dataModel;

@end
