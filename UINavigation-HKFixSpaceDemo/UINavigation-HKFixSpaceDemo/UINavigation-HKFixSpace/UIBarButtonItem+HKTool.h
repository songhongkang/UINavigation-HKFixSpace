//
//  UIBarButtonItem+HKTool.h
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HKTool)
+ (instancetype)hk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action spaceWidth:(CGFloat)spaceWidth;

+ (instancetype)hk_initWithBarButtonTitle:(NSString *)title buttonType:(UIButtonType)buttonType ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent;

+ (instancetype)hk_initWithBarButtonImage:(NSString *)imageName buttonType:(UIButtonType)buttonType ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent;

+ (instancetype)hk_initWithBarButtonImage:(NSString *)imageName buttonType:(UIButtonType)buttonType title:(NSString *)title color:(UIColor *)color ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent;

@end
