//
//  KMRMTopic.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KMRMArgument.h"

@interface KMRMTopic : NSObject


// properties
@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly, strong) NSArray *arguments;
@property (nonatomic, readonly, assign) NSInteger count;


// initializers
- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name arguments:(NSArray *)arguments;


// arguments
- (void)addArgument:(KMRMArgument *)argument;
- (void)addArguments:(NSArray *)arguments;

@end
