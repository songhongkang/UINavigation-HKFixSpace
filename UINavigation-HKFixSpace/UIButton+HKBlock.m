
//
//  UIButton+HKBlock.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIButton+HKBlock.h"
#import <objc/runtime.h>

@interface UIButton ()
@property (nonatomic, copy) void(^eventBlock)(UIButton *);
@end

@implementation UIButton (Block)
- (void)addAction:(void(^)(UIButton *))btnClickBlock
{
    self.eventBlock  = btnClickBlock;
    [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addAction:(void (^)(UIButton *))btnClickBlock controlEvents:(UIControlEvents)controlEvents
{
    self.eventBlock = btnClickBlock;
    [self addTarget:self action:@selector(btnClick:) forControlEvents:controlEvents];
}

- (void)btnClick:(UIButton *)sender
{
    if (self.eventBlock) {
        self.eventBlock(sender);
    }
}

- (void(^)(UIButton *))eventBlock
{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setEventBlock:(void (^)(UIButton *))eventBlock
{
    objc_setAssociatedObject(self, @selector(eventBlock), eventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
