//
//  KMRMLLDBViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/31/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMLLDBViewController.h"

@interface KMRMLLDBViewController ()

@end

@implementation KMRMLLDBViewController



#pragma mark - View Lifecycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.title = NSLocalizedString(@"LLDB", nil);
}



#pragma mark - Action Methods

- (IBAction)pTouched:(id)sender
{
    NSInteger sum = 0;
    
    for (int i = 0; i < 5; i++)
    {
        sum++;
    }
    
    // p sum
}

- (IBAction)poTouched:(id)sender
{
    KMRMArgument *argument = [[KMRMArgument alloc] initWithName:@"Objective-C ARC" detail:@"Automatic Reference Counting"];
    argument.viewController = [KMRMLLDBViewController class];
    
    // po argument
    // p argument
}

- (IBAction)exprTouched:(id)sender
{
    NSString *username = @"maxoly";
    NSString *password = @"secret";
    
    // es. expr password = @"newpass"
    // es. expression (view, printf)
    NSLog(@"user: %@ as password: %@", username, password);
}

@end
