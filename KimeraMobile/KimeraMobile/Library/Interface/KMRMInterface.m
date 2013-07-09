//
//  KMRMInterface.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "KMRMInterface.h"

@interface KMRMInterface ()

@property (nonatomic, copy) NSString *themeName;
@property (nonatomic, strong) NSObject<KMRMTheme> *theme;

@end



@implementation KMRMInterface



#pragma mark - Init Methods

- (instancetype)initWithThemeName:(NSString *)themeName
{
    self = [super init];
    if (self)
    {
        self.themeName = themeName;
        [self.theme configure];
    }
    
    return self;
}



#pragma mark - Custom Properties

- (NSObject<KMRMTheme> *)theme
{
    if (!_theme)
    {
        _theme = [[NSClassFromString(self.themeName) alloc] init];
    }
    
    return _theme;
}

@end
