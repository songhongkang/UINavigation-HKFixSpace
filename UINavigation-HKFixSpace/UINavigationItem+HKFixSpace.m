
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
#import "UIBarButtonItem+HKTool.h"

@implementation UINavigationItem (HKFixSpace)

+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setLeftBarButtonItem:)),class_getInstanceMethod(self, @selector(hk_setLeftBarButtonItem:)));
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setLeftBarButtonItems:)), class_getInstanceMethod(self, @selector(hk_setLeftBarButtonItems:)));
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setRightBarButtonItem:)),class_getInstanceMethod(self, @selector(hk_setRightBarButtonItem:)));
    
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setRightBarButtonItems:)), class_getInstanceMethod(self, @selector(hk_setRightBarButtonItems:)));
}

- (void)hk_setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
    if ((hk_iPhoneSystemIOS11)) {
        [self hk_setLeftBarButtonItem:leftBarButtonItem];
    }else{
        if ([HKNavigationFixSpaceConfig shared].isHk_allowSpace) {
            [self setLeftBarButtonItems:@[leftBarButtonItem]];
        }else{
            [self hk_setLeftBarButtonItem:leftBarButtonItem];
        }
    }
}

- (void)hk_setLeftBarButtonItems:(NSArray<UIBarButtonItem *> *)leftBarButtonItems
{
    if (hk_iPhoneSystemIOS11){
        [self hk_setLeftBarButtonItems:leftBarButtonItems];
    }else{
        if (leftBarButtonItems.count){
            UIBarButtonItem *itemSpace1 = [UIBarButtonItem hk_initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil spaceWidth:[HKNavigationFixSpaceConfig shared].hk_leftSpace - 20.0];
            NSMutableArray *mutArray = [NSMutableArray arrayWithArray:leftBarButtonItems];
            [mutArray insertObject:itemSpace1 atIndex:0];
            [self hk_setLeftBarButtonItems:mutArray];
        }else{
            [self hk_setLeftBarButtonItems:leftBarButtonItems];
        }
    }
}

- (void)hk_setRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem
{
    if (hk_iPhoneSystemIOS11){
        [self hk_setRightBarButtonItem:rightBarButtonItem];
    }else{
        if ([HKNavigationFixSpaceConfig shared].isHk_allowSpace){
            [self setRightBarButtonItems:@[rightBarButtonItem]];
        }else{
            [self hk_setRightBarButtonItem:rightBarButtonItem];
        }
    }
}

- (void)hk_setRightBarButtonItems:(NSArray<UIBarButtonItem *> *)rightBarButtonItems
{
    if (hk_iPhoneSystemIOS11){
        [self hk_setRightBarButtonItems:rightBarButtonItems];
    }else{
        if (rightBarButtonItems.count){
            UIBarButtonItem *itemSpace1 = [UIBarButtonItem hk_initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil spaceWidth:[HKNavigationFixSpaceConfig shared].hk_rightSpace-20];
            NSMutableArray *mutArray = [NSMutableArray arrayWithArray:rightBarButtonItems];
            [mutArray insertObject:itemSpace1 atIndex:0];
            [self hk_setRightBarButtonItems:mutArray];
        }else{
            [self hk_setRightBarButtonItems:rightBarButtonItems];
        }
    }
}
@end
