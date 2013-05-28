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
    return [self initWithName:name description:nil];
}

- (instancetype)initWithName:(NSString *)name description:(NSString *)description
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.description = description;
    }
    
    return self;
}

@end
