//
//  UINavigationController+Gesture.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UINavigationController+Gesture.h"
#import "HK_Macro.h"

@implementation UINavigationController (Gesture)
+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(viewDidLoad)), class_getInstanceMethod(self, @selector(hk_viewDidLoad)));
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(pushViewController:animated:)), class_getInstanceMethod(self, @selector(hk_pushViewController:animated:)));
}

- (void)hk_viewDidLoad
{
    __weak typeof(self) weakself = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = (id)weakself;
    }
}

- (void)hk_pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self hk_pushViewController:viewController animated:YES];
    if(!animated){
        [self.navigationBar layoutSubviews];
    }
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        if (self.viewControllers.count < 2 ||
            self.visibleViewController == [self.viewControllers objectAtIndex:0]) {
            return NO;
        }
    }
    return YES;
}

@end
