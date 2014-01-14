//
//  APLNavigationController.m
//
//  Created by Tobias Conradi on 18.11.13.
//  Copyright (c) 2013 apploft GmbH. All rights reserved.
//

#import "APLNavigationController.h"

@interface APLNavigationController ()
@end

@implementation APLNavigationController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self navigationBarShouldBeHidden:self.topViewController.apl_hidesNavigationBarWhenPushed animated:animated];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    [self navigationBarShouldBeHidden:viewController.apl_hidesNavigationBarWhenPushed animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    UIViewController *popped = [super popViewControllerAnimated:animated];
    UIViewController *nextViewController = [self topViewController];
    [self navigationBarShouldBeHidden:nextViewController.apl_hidesNavigationBarWhenPushed animated:animated];
    return popped;
}
- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSArray *poppedViewControllers = [super popToViewController:viewController animated:animated];
    [self navigationBarShouldBeHidden:viewController.apl_hidesNavigationBarWhenPushed animated:animated];
    return poppedViewControllers;
}
- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated {
    NSArray *poppedViewControllers = [super popToRootViewControllerAnimated:animated];
    UIViewController *nextViewController = [self.viewControllers firstObject];
    [self navigationBarShouldBeHidden:nextViewController.apl_hidesNavigationBarWhenPushed animated:animated];
    return poppedViewControllers;
}

- (void) navigationBarShouldBeHidden:(BOOL)shouldBeHidden animated:(BOOL)animated {
    if (self.navigationBarHidden && !shouldBeHidden) {
        [self setNavigationBarHidden:NO animated:animated];
    } else if (!self.navigationBarHidden && shouldBeHidden) {
        [self setNavigationBarHidden:YES animated:animated];
    }
}

@end

@implementation UIViewController (APLNavigationController)
- (BOOL)apl_hidesNavigationBarWhenPushed {
    return NO;
}
@end
