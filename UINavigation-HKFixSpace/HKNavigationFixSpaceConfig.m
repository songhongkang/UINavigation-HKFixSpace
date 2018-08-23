//
//  HKNavigationFixSpaceConfig.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/22.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "HKNavigationFixSpaceConfig.h"
static HKNavigationFixSpaceConfig *_instance = nil;
@implementation HKNavigationFixSpaceConfig
+ (instancetype)shared
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}
@end
