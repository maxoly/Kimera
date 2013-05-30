//
//  KMRMBreakpointsViewController.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/28/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMRMBreakpointsViewController : UIViewController

- (IBAction)exceptionTouched:(id)sender;
- (IBAction)symbolicTouched:(id)sender;
- (IBAction)conditionalTouched:(id)sender;
- (IBAction)loggingTouched:(id)sender;
- (IBAction)debuggerTouched:(id)sender;
- (IBAction)soundTouched:(id)sender;
- (IBAction)speakerTouched:(id)sender;

@end
