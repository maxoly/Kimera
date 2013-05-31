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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ios6apiTouched:(id)sender
{
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"New iOS 6 APi -  UIDevice:identifierForVendor - %@", uuid);
}

@end
