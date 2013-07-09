//
//  KMRMTheme.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, KMRMThemeLabelType)
{
    KMRMThemeLabelTypeArgumentTitle,
    KMRMThemeLabelTypeArgumentDescription
};

@protocol KMRMTheme <NSObject>

- (void)configure;

- (void)themeLabel:(UILabel *)label type:(KMRMThemeLabelType)type;

@end
