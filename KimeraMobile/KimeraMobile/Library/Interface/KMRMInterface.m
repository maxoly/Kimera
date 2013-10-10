//
//  KMRMInterface.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMInterface.h"

@interface KMRMInterface ()

@property (nonatomic, strong) NSObject<KMRMTheme> *theme;
@property (nonatomic, strong) UINavigationController *navViewController;

@end



@implementation KMRMInterface



#pragma mark - Init Methods

- (instancetype)initWithTheme:(NSObject<KMRMTheme> *)theme navViewController:(UINavigationController *)navViewController
{
    self = [super init];
    if (self)
    {
        self.theme = theme;
        self.navViewController = navViewController;
        
        [self setup];
    
    }
    
    return self;
}



#pragma mark - Configure

- (void)setup
{
    [self.theme configure];
    [self.navViewController.navigationBar setBarStyle:UIBarStyleDefault];
    [self.navViewController.navigationBar setTranslucent:NO];
}

@end
