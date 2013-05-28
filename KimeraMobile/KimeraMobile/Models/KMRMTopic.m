//
//  KMRMTopic.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMTopic.h"

@interface KMRMTopic ()

@property (nonatomic, strong) NSMutableArray *arguments;

@end

@implementation KMRMTopic



#pragma mark - Init Methods

- (instancetype)initWithName:(NSString *)name
{
    return [self initWithName:name arguments:nil];
}

- (instancetype)initWithName:(NSString *)name arguments:(NSArray *)arguments
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.arguments = arguments;
    }
    
    return self;
}



#pragma mark - Arguments Methods

- (void)addArgument:(KMRMArgument *)argument
{
    if (nil == self.arguments)
    {
        self.arguments = [[NSMutableArray alloc] init];
    }
    
    [(NSMutableArray *)self.arguments addObject:argument];
}

- (void)addArguments:(NSArray *)arguments
{
    self.arguments = [NSMutableArray arrayWithArray:arguments];
}

-  (NSInteger)count
{
    return self.arguments.count;
}

@end
