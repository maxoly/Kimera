//
//  KMRMDataModel.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMDataModel.h"

@implementation KMRMDataModel

- (void)getTopics:(KMRMDataModelTopicsCompletion)completion
{
    dispatch_queue_t callerQueue = dispatch_get_current_queue();
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^
    {
        NSMutableArray *topics = [[NSMutableArray alloc] init];
        
        NSString *topicsFile = [[NSBundle mainBundle] pathForResource:@"Kimera_Topics" ofType:@"plist"];
        NSArray *topicsPlist = [NSArray arrayWithContentsOfFile:topicsFile];
        
        for (NSDictionary *topicsDic in topicsPlist)
        {
            KMRMTopic *topic = [[KMRMTopic alloc] initWithName:[topicsDic objectForKey:@"name"]];
            
            for (NSDictionary *argsDic in [topicsDic objectForKey:@"arguments"])
            {
                NSString *name = [argsDic objectForKey:@"name"];
                NSString *description = [argsDic objectForKey:@"description"];
                NSString *viewController = [argsDic objectForKey:@"viewController"];
                KMRMArgument *argument = [[KMRMArgument alloc] initWithName:name description:description];
                argument.viewController = NSClassFromString(viewController);
                [topic addArgument:argument];
            }
            
            [topics addObject:topic];
        }
        
        dispatch_async(callerQueue, ^
        {
            completion(topics);
        });
    });
}

@end
