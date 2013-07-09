//
//  UIResponder+Kimera.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KMRMInterface.h"

@interface UIResponder (Kimera)

@property (nonatomic, strong, readonly) KMRMInterface *interface;

@end
