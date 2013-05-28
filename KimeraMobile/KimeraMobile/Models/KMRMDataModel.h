//
//  KMRMDataModel.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KMRMTopic.h"
#import "KMRMArgument.h"


// completion blocks
typedef void(^KMRMDataModelTopicsCompletion)(NSArray *topics);


// Kimera Data Model
@interface KMRMDataModel : NSObject

- (void)getTopics:(KMRMDataModelTopicsCompletion)completion;

@end
