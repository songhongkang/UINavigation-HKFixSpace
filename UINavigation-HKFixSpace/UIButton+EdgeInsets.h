//
//  UIButton+EdgeInsets.h
//  buttonEdgeInsets
//
//  Created by 宋宏康 on 2018/7/6.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIButtonEdgeInsetsStyle) {
    UIButtonEdgeInsetsStyleTop = 0,
    UIButtonEdgeInsetsStyleLeft,
    UIButtonEdgeInsetsStyleBottom,
    UIButtonEdgeInsetsStyleRight
};

@interface UIButton (EdgeInsets)

//@property (nonatomic ,assign) UIButtonEdgeInsetsStyle buttonEdgeInsetStyle;

- (void)layoutButtonWithEdgeInsetStyle:(UIButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space;
@end
