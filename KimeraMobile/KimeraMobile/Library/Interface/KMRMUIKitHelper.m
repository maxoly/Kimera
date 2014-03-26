//
//  KMRMUIKitHelper.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 10/10/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMUIKitHelper.h"
#include <mach-o/dyld.h>

#ifndef kCFCoreFoundationVersionNumber_iOS_7_0
#define kCFCoreFoundationVersionNumber_iOS_7_0 847.2
#endif

#define UIKitVersionNumber_iOS_7_0 0xB57

BOOL IsUIKitFlatMode(void)
{
    static BOOL isUIKitFlatMode = NO;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // We get the modern UIKit if system is running >= iOS 7 and we were linked with >= SDK 7.
        if (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_7_0) {
            isUIKitFlatMode = (NSVersionOfLinkTimeLibrary("UIKit") >> 16) >= UIKitVersionNumber_iOS_7_0;
        }
    });
    return isUIKitFlatMode;
}
