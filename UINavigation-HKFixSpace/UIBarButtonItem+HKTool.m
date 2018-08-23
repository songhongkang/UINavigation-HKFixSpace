//
//  UIBarButtonItem+HKTool.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/23.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIBarButtonItem+HKTool.h"

@implementation UIBarButtonItem (HKTool)

+ (instancetype)hk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action spaceWidth:(CGFloat)spaceWidth
{
    UIBarButtonItem *spaceButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:systemItem target:target action:action];
    spaceButtonItem.width = spaceWidth;
    return spaceButtonItem;
}
@end
