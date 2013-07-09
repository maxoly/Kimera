//
//  KMRMInterface.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KMRMTheme.h"

@interface KMRMInterface : NSObject

// current theme
@property (nonatomic, readonly) NSObject<KMRMTheme> *theme;

// initializers
- (instancetype)initWithThemeName:(NSString *)themeName;

@end
