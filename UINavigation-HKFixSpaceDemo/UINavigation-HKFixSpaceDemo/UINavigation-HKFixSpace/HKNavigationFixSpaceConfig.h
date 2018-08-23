//
//  HKNavigationFixSpaceConfig.h
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/22.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HKNavigationFixSpaceConfig : NSObject

@property (nonatomic, assign)CGFloat hk_leftSpace;

@property (nonatomic, assign)CGFloat hk_rightSpace;

@property (nonatomic, assign,getter =isHk_allowSpace)BOOL hk_allowSpace;

@property (nonatomic, assign,getter=isAllowOpenGesture)BOOL allowOpenGesture;
+ (instancetype)shared;
@end
