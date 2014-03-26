//
//  KMRMBreakpointsViewController.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMBreakpointsViewController.h"

@interface KMRMBreakpointsViewController ()

@end

@implementation KMRMBreakpointsViewController



#pragma mark - View Lifeycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}



#pragma mark - Action Methods

- (IBAction)exceptionTouched:(id)sender
{
    NSArray *array = @[ @1, @2, @3 ];
    NSNumber *element = [array objectAtIndex:4];
    NSLog(@"exception element: %@", element);
}

- (IBAction)symbolicTouched:(id)sender
{
    NSArray *array = @[ @1, @2, @3 ];
    NSNumber *element = [array lastObject];
    NSLog(@"symbolic element: %@", element);
}

- (IBAction)conditionalTouched:(id)sender
{
    NSArray *array = @[ @1, @2, @3 ];
    
    for (int i = 0; i < array.count; i++)
    {
        NSNumber *element = array[i];
        NSLog(@"conditional element: %@", element);
    }
}

- (IBAction)loggingTouched:(id)sender
{
    NSInteger sum = 0;
    NSArray *array = @[ @1, @2, @3, @4, @5 ];
    
    for (int i = 0; i < array.count; i++)
    {
        NSNumber *element = array[i];
        sum += [element integerValue];
    }
    
    NSLog(@"sum: %li", (long)sum);
    
    CGFloat avg = sum / array.count;
    
    NSLog(@"avg: %f", avg);
}

- (IBAction)debuggerTouched:(id)sender
{
    NSInteger sum = 0;
    NSArray *array = @[ @1, @2, @3, @4, @5 ];
    
    for (int i = 0; i < array.count; i++)
    {
        NSNumber *element = array[i];
        sum += [element integerValue];
    }
    
    NSLog(@"sum: %li", (long)sum);
}

- (IBAction)soundTouched:(id)sender
{
    // ~/Library/Sounds
    NSLog(@"just a sound");
}

- (IBAction)speakerTouched:(id)sender
{
    NSInteger sum = 0;
    NSArray *array = @[ @1, @2, @3, @4, @5 ];
    
    for (int i = 0; i < array.count; i++)
    {
        NSNumber *element = array[i];
        sum += [element integerValue];
    }
    
    NSLog(@"sum: %li", (long)sum);
    
    // little issue!
}

@end
