//
//  KMRMMrcIssueViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/27/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMMrcIssueViewController.h"

@interface KMRMMrcIssueViewController ()

@end

@implementation KMRMMrcIssueViewController

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

- (IBAction)zombieTouched:(id)sender
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 5; i++)
    {
        [array addObject:[NSNumber numberWithInt:i]];
    }
    
    [array release];

    NSLog(@"Count: %i", [array count]); // ARGGH!!
    
    // Solutions:
    // 1. Product > Scheme > Edit Scheme > Diagnostics > Enable Zombie Objects
    // 2. Instruments
}

@end
