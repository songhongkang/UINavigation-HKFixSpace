//
//  UINavigationBar+HKFixSpace.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/22.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UINavigationBar+HKFixSpace.h"
#import "HK_Macro.h"
#import "HKNavigationFixSpaceConfig.h"


@implementation UINavigationBar (HKFixSpace)
+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(layoutSubviews)), class_getInstanceMethod(self, @selector(hk_layoutSubviews)));
}

- (void)hk_layoutSubviews
{
    [self hk_layoutSubviews];

    if (!(hk_iPhoneSystemIOS11)) return;
    for (UIView *subView in self.subviews) {
        if ([NSStringFromClass([subView class]) containsString:@"ContentView"]) {
            subView.layoutMargins = UIEdgeInsetsMake(0, [HKNavigationFixSpaceConfig shared].hk_leftSpace, 0, [HKNavigationFixSpaceConfig shared].hk_rightSpace);
        }
    }
    
}
@end
