//
//  KMRMUIKitHelper.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 10/10/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMUIKitHelper.h"

#ifndef kCFCoreFoundationVersionNumber_iOS_7_0
    #define kCFCoreFoundationVersionNumber_iOS_7_0 847.2
#endif

BOOL IsUIKitFlatMode(void)
{
    static BOOL isUIKitFlatMode = NO;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
                  {
                      if (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_7_0)
                      {
                          // If your app is running in legacy mode, tintColor will be nil - else it must be set to some color.
                          if (UIApplication.sharedApplication.keyWindow)
                          {
                              isUIKitFlatMode = [UIApplication.sharedApplication.keyWindow performSelector:@selector(tintColor)] != nil;
                          }
                          else
                          {
                              // Possible that we're called early on (e.g. when used in a Storyboard). Adapt and use a temporary window.
                              isUIKitFlatMode = [[UIWindow new] performSelector:@selector(tintColor)] != nil;
                          }
                      }
                  });
    
    return isUIKitFlatMode;
}
