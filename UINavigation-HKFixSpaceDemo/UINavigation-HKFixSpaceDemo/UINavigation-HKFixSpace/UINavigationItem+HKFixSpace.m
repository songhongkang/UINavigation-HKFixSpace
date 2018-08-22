
//
//  UINavigationItem+HKFixSpace.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/22.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UINavigationItem+HKFixSpace.h"
#import "HK_Macro.h"
#import "HKNavigationFixSpaceConfig.h"

@implementation UINavigationItem (HKFixSpace)
+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setLeftBarButtonItem:)),class_getInstanceMethod(self, @selector(hk_setLeftBarButtonItem:)));
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setLeftBarButtonItems:)), class_getInstanceMethod(self, @selector(hk_setLeftBarButtonItems:)));
    
}

- (void)hk_setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
    if (hk_iPhoneSystemIOS11) {
        [self hk_setLeftBarButtonItem:leftBarButtonItem];
    }else{
        if ([HKNavigationFixSpaceConfig shared].isHk_allowSpace) {
            
        }else{
            [self hk_setLeftBarButtonItem:leftBarButtonItem];
        }
    }
}

- (void)hk_setLeftBarButtonItems:(NSArray<UIBarButtonItem *> *)leftBarButtonItems
{
    
}
@end
