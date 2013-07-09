//
//  KMRMLoggingViewController.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <NSLogger/LoggerClient.h>

//#import "DMLogger.h"

#ifdef DEBUG
    #define LOG_NETWORK(level, ...)    LogMessageF(__FILE__,__LINE__,__FUNCTION__,@"network",level,__VA_ARGS__)
    #define LOG_GENERAL(level, ...)    LogMessageF(__FILE__,__LINE__,__FUNCTION__,@"general",level,__VA_ARGS__)
    #define LOG_GRAPHICS(level, ...)   LogMessageF(__FILE__,__LINE__,__FUNCTION__,@"graphics",level,__VA_ARGS__)
#else
    #define LOG_NETWORK(...)    do{}while(0)
    #define LOG_GENERAL(...)    do{}while(0)
    #define LOG_GRAPHICS(...)   do{}while(0)
#endif

#import "DDLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"
#import "DDFileLogger.h"
#import "DDAbstractDatabaseLogger.h"

#ifdef DEBUG
    static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
    static const int ddLogLevel = LOG_LEVEL_ERROR;
#endif

@interface KMRMLoggingViewController : UIViewController

@property (nonatomic, strong) DDFileLogger *fileLogger;

- (IBAction)nslogTouched:(id)sender;
- (IBAction)customTouched:(id)sender;
- (IBAction)nsloggerTouched:(id)sender;
- (IBAction)cocoalumberjack:(id)sender;
- (IBAction)dmloggerTouched:(id)sender;

@end
