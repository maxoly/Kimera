//
//  KMRMArgument.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMArgument.h"

@implementation KMRMArgument



#pragma mark - Init Methods

- (instancetype)initWithName:(NSString *)name
{
    return [self initWithName:name detail:nil];
}

- (instancetype)initWithName:(NSString *)name detail:(NSString *)detail
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.detail = detail;
    }
    
    return self;
}

- (NSString *)viewControllerString
{
    return NSStringFromClass(self.viewController);
}

@end
