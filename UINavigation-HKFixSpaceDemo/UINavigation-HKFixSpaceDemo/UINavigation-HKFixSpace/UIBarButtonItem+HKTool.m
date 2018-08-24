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
@property (nonatomic, copy) void(^eventBlock)(void);
@end


@implementation UIBarButtonItem (HKTool)

+ (instancetype)hk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action spaceWidth:(CGFloat)spaceWidth
{
    UIBarButtonItem *spaceButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:systemItem target:target action:action];
    spaceButtonItem.width = spaceWidth;
    return spaceButtonItem;
}

+ (instancetype)hk_initWithBarButtonTitle:(NSString *)title buttonType:(UIButtonType)buttonType btnClick:(void(^)(void))btnClickEvent
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
    UIBarButtonItem *barbuttonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return barbuttonItem;
}


- (void(^)(void))eventBlock
{
    return objc_getAssociatedObject(self, @selector(setEventBlock:));
}
- (void)setEventBlock:(void (^)(void))eventBlock
{
    objc_setAssociatedObject(self, _cmd, eventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
@end
