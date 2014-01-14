//
//  APLNavigationController.h
//
//  Created by Tobias Conradi on 18.11.13.
//  Copyright (c) 2013 apploft GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  APLNavigationController is a custom UINavigationController subclass
 *  which adds support for automatic show/hide of the navgationBar based on
 *  the apl_hidesNavigationBarWhenPushed-Property on UIViewController.
 */
@interface APLNavigationController : UINavigationController

@end

@interface UIViewController (APLNavigationController)
/**
 *  Implement in UIViewController subclasses and return YES to hide navigation bar.
 *  Default: NO
 */
@property (nonatomic, readonly) BOOL apl_hidesNavigationBarWhenPushed;
@end