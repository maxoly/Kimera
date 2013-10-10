//
//  KMRMServiceLocator.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 10/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMRMServiceLocator : NSObject

@property (nonatomic, strong) NSMutableDictionary *services;

- (KMRMServiceLocator *)registerProtocol:(Protocol *)protocol withClass:(Class)concreteClass;
- (id)getServiceWithProtocol:(Protocol *)protocol;

@end
