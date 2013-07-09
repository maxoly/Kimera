//
//  KMRMLoggingViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMLoggingViewController.h"

@interface KMRMLoggingViewController ()

@end

@implementation KMRMLoggingViewController



#pragma mark - View Lifecycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];

    // View
    self.title = NSLocalizedString(@"Logging", nil);
    
    // Setup NSLogger
    LoggerSetOptions(NULL,
                     kLoggerOption_BufferLogsUntilConnection |
                     kLoggerOption_LogToConsole |
                     kLoggerOption_UseSSL |
                     kLoggerOption_BrowseBonjour |
                     kLoggerOption_BrowseOnlyLocalDomain);
    
    // Setup Cocoa Lumberjack
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    self.fileLogger = [[DDFileLogger alloc] init];
    self.fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    self.fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [DDLog addLogger:self.fileLogger];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}



#pragma mark - Action Methods

- (IBAction)nslogTouched:(id)sender
{
    NSLog(@"This is a standard NSLog function");
}

- (IBAction)customTouched:(id)sender
{
    KMRLog(@"This is a custom NSLog");
}

- (IBAction)nsloggerTouched:(id)sender
{
    UIImage *image = [UIImage imageNamed:@"meme_jackie_chan.jpg"];
    LogMessage(@"Logging", 5, @"This is NSLogger");
    LOG_GENERAL(1, @"Log test with NSLogger");
    LogImageData(@"Images", 6, image.size.width, image.size.height,UIImageJPEGRepresentation(image, 0.0));
}

- (IBAction)cocoalumberjack:(id)sender
{
    DDLogError(@"This is CocoaLumberjack!");
    DDLogVerbose(@"Log test with: %@", @"CocoaLumberjack");
}

- (IBAction)dmloggerTouched:(id)sender
{
//    DMLogInfo(@"DMLogger test");
//    DMLogError(@"Help!!");
//    DMLogWarning(@"OMG!!");
}

@end
