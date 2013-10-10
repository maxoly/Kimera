//
//  KMRMServiceLocator.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 10/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMServiceLocator.h"

#import <objc/runtime.h>

@implementation KMRMServiceLocator

#pragma mark - Custom Properties

- (NSMutableDictionary *)services
{
    if (nil == _services)
    {
        _services = [[NSMutableDictionary alloc] init];
    }
    
    return _services;
}


#pragma mark - Service Locator Core Methods

- (KMRMServiceLocator *)registerProtocol:(Protocol *)protocol withClass:(Class)concreteClass
{
   // NSAssert(![concreteClass conformsToProtocol:protocol], @"Invalid class definition, it must conforms to protocol");
    
    [self.services setObject:concreteClass forKey:[NSValue valueWithNonretainedObject:protocol]];
    
    return self;
}

- (id)getServiceWithProtocol:(Protocol *)protocol
{
    Class concreteClass = self.services[[NSValue valueWithNonretainedObject:protocol]];
    
//    u_int count;
//    
//    Method * methods = class_copyMethodList(concreteClass, &count);
//    
//    for (int i = 0; i < count ; i++)
//    {
//        SEL selector = method_getName(methods[i]);
//        const char *methodName = sel_getName(selector);
//        NSString *methodString = [NSString  stringWithCString:methodName encoding:NSUTF8StringEncoding];
//        NSLog(@"method: %@", methodString);
//        
//        if ([methodString hasPrefix:@"initWith"])
//        {
//            NSLog(@"Initzializer: %@", methodString);
//            char buffer[256];
//            unsigned int numberOfArguments = method_getNumberOfArguments(methods[i]);
//            for(int j=0; j<numberOfArguments; j++)
//            {
//                method_getArgumentType(methods[i], j, buffer, 256);
//                NSLog(@"The type of argument %d is %s", j, buffer);
//            }
//        }
//        
//
//        
//    }
//    
//    free(methods);
    
    return [[concreteClass alloc] init];
}

@end
