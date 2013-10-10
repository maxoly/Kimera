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
                NSString *detail = [argsDic objectForKey:@"detail"];
                NSString *viewController = [argsDic objectForKey:@"viewController"];
                KMRMArgument *argument = [[KMRMArgument alloc] initWithName:name detail:detail];
                argument.viewController = NSClassFromString(viewController);
                [topic addArgument:argument];
            }
            
            [topics addObject:topic];
        }
        
        if (completion)
        {
            completion(topics);
        }
    });
}

@end
