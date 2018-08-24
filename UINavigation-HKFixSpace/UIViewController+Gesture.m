//
//  UIViewController+Gesture.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIViewController+Gesture.h"

@implementation UIViewController (Gesture)
+ (void)popGestureClose:(UIViewController *)VC
{
    if ([VC.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        for (UIGestureRecognizer *popGesture in VC.navigationController.interactivePopGestureRecognizer.view.gestureRecognizers) {
            popGesture.enabled = NO;
        }
    }
}

+ (void)popGestureOpen:(UIViewController *)VC
{
    if ([VC.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        for (UIGestureRecognizer *popGesture in VC.navigationController.interactivePopGestureRecognizer.view.gestureRecognizers) {
            popGesture.enabled = YES;
        }
    }
}

@end
