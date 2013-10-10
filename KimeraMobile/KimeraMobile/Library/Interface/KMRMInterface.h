//
//  KMRMInterface.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KMRMTheme.h"

@interface KMRMInterface : NSObject

// properties
@property (nonatomic, readonly) NSObject<KMRMTheme> *theme;
@property (nonatomic, readonly) UINavigationController *navViewController;

// initializers
- (instancetype)initWithTheme:(NSObject<KMRMTheme> *)theme navViewController:(UINavigationController *)navViewController;

@end
