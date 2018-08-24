//
//  UIBarButtonItem+HKTool.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIBarButtonItem+HKTool.h"
#import "HK_Macro.h"
#import "UIButton+HKBlock.h"

@interface UIBarButtonItem()
@end


@implementation UIBarButtonItem (HKTool)

+ (instancetype)hk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action spaceWidth:(CGFloat)spaceWidth
{
    UIBarButtonItem *spaceButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:systemItem target:target action:action];
    spaceButtonItem.width = spaceWidth;
    return spaceButtonItem;
}

+ (instancetype)hk_initWithBarButtonTitle:(NSString *)title buttonType:(UIButtonType)buttonType ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent
{
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addAction:^(UIButton *btn) {
        if (btnClickEvent){
            btnClickEvent();
        }
    }];
    
    CGFloat btnWidth = CGRectGetWidth(btn.frame);
    CGFloat btnHight = CGRectGetHeight(btn.frame);
    
    if(btnWidth < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0, 40.0*btnHight/btnWidth);
    }
    if(btnHight < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0*btnWidth/btnHight, 40.0);
    }
    btn.contentHorizontalAlignment = ControlContentHorizontalAlignment;
    UIBarButtonItem *barbuttonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return barbuttonItem;
}

+ (instancetype)hk_initWithBarButtonImage:(NSString *)imageName buttonType:(UIButtonType)buttonType ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent
{
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn sizeToFit];
    
    [btn addAction:^(UIButton *sender) {
        if (btnClickEvent) {
            btnClickEvent();
        }
    }];
    CGFloat btnWidth = CGRectGetWidth(btn.frame);
    CGFloat btnHight = CGRectGetHeight(btn.frame);
    
    if(btnWidth < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0, 40.0*btnHight/btnWidth);
    }
    if(btnHight < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0*btnWidth/btnHight, 40.0);
    }
    btn.contentHorizontalAlignment = ControlContentHorizontalAlignment;
    UIBarButtonItem *barbuttonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return barbuttonItem;
}

+ (instancetype)hk_initWithBarButtonImage:(NSString *)imageName buttonType:(UIButtonType)buttonType title:(NSString *)title color:(UIColor *)color ControlContentHorizontalAlignment:(UIControlContentHorizontalAlignment)ControlContentHorizontalAlignment btnClick:(void(^)(void))btnClickEvent
{
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn sizeToFit];
    
    [btn addAction:^(UIButton *sender) {
        if (btnClickEvent) {
            btnClickEvent();
        }
    }];
    CGFloat btnWidth = CGRectGetWidth(btn.frame);
    CGFloat btnHight = CGRectGetHeight(btn.frame);
    
    if(btnHight < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0*btnWidth/btnHight, 40.0);
    }
    if(btnWidth < 40.0){
        btn.frame = CGRectMake(0, 0, 40.0, 40.0*btnHight/btnWidth);
    }
    btn.contentHorizontalAlignment = ControlContentHorizontalAlignment;
    UIBarButtonItem *barbuttonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return barbuttonItem;
}
@end
