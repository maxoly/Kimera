//
//  KMRMToolsViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/31/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMToolsViewController.h"

@interface KMRMToolsViewController ()

@end

@implementation KMRMToolsViewController



#pragma mark - View Lifecycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"Tools", nil);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}



#pragma mark - Action Methods

- (IBAction)appnetTouched:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"https://alpha-api.app.net/stream/0/posts/stream/global"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    op.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSLog(@"App.net Global Stream: %@", responseObject);
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        NSLog(@"Error: %@", error);
    }];
    
    [[NSOperationQueue mainQueue] addOperation:op];
}

- (IBAction)googleTouched:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"http://www.google.it"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    [operation  setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSLog(@"Google: %@", responseObject);
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error)
    {
        NSLog(@"error: %@",  error);
    }];
    
    [operation start];
}

- (IBAction)testflightTouched:(id)sender
{
    NSArray *array = @[ @1, @2, @3 ];
    NSNumber *element = [array objectAtIndex:4];
    NSLog(@"element: %@", element);
}

- (IBAction)ios6ApiTouched:(id)sender
{
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"identifierForVendor: %@", uuid);
}



@end
