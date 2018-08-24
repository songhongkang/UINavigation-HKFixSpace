//
//  UIButton+HKBlock.h
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonBlock)(UIButton* btn);

@interface UIButton (HKBlock)

- (void)addAction:(ButtonBlock)block;

- (void)addAction:(ButtonBlock)block forControlEvents:(UIControlEvents)controlEvents;

@end
