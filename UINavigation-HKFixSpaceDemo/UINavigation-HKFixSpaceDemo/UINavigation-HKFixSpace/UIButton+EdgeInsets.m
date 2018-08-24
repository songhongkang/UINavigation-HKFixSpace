//
//  UIButton+EdgeInsets.m
//  buttonEdgeInsets
//
//  Created by 宋宏康 on 2018/7/6.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIButton+EdgeInsets.h"

@implementation UIButton (EdgeInsets)

- (void) layoutButtonWithEdgeInsetStyle:(UIButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space
{
      CGSize imageSize =  self.imageView.frame.size;
      CGSize titleSize =  self.titleLabel.frame.size;
      CGFloat buttonCenterX = CGRectGetMidX(self.bounds);
      CGFloat imageTopY  = CGRectGetMinY(self.imageView.frame);
      CGFloat imageMaxTopY  = CGRectGetMaxY(self.imageView.frame);

      CGFloat imageCenterX  = CGRectGetMidX(self.imageView.frame);
      CGFloat titleCenterX  = CGRectGetMidX(self.titleLabel.frame);
      CGFloat buttonHight = CGRectGetHeight(self.frame);
      CGFloat titleMaxTopY = CGRectGetMaxY(self.titleLabel.frame);
      CGFloat titleTopY = CGRectGetMinY(self.titleLabel.frame);

      CGFloat buttonCenterHeight = (imageSize.height + titleSize.height + space) / 2.0;
    
      CGFloat imageEdegeTop    = 0;
      CGFloat imageEdegeLeft   = 0;
      CGFloat imageEdegeBottom = 0;
      CGFloat imageEdegeRight  = 0;
    
      CGFloat titleEdegeTop    = 0;
      CGFloat titleEdegeLeft   = 0;
      CGFloat titleEdegeBottom = 0;
      CGFloat titleEdegeRight  = 0;


    switch (style) {
        case UIButtonEdgeInsetsStyleTop:
            {
                imageEdegeTop = (buttonHight/2.0 - buttonCenterHeight)  -imageTopY;
                imageEdegeLeft =  (buttonCenterX - imageCenterX);
                imageEdegeBottom = -imageEdegeTop;
                imageEdegeRight = - imageEdegeLeft;

                titleEdegeTop = buttonHight - titleMaxTopY - (buttonHight/2.0 - buttonCenterHeight);
                titleEdegeLeft =  (buttonCenterX - titleCenterX);
                titleEdegeBottom = -titleEdegeTop;
                titleEdegeRight = -titleEdegeLeft;

            }
            break;
        case UIButtonEdgeInsetsStyleLeft:
        {
            imageEdegeTop = 0;
            imageEdegeLeft = - (space / 2.0);
            imageEdegeBottom = -imageEdegeTop;
            imageEdegeRight = - imageEdegeLeft;
            
            titleEdegeTop = 0;
            titleEdegeLeft =  space / 2.0;
            titleEdegeBottom = -titleEdegeTop;
            titleEdegeRight = -titleEdegeLeft;
        }
            break;
        case UIButtonEdgeInsetsStyleBottom:
        {
            imageEdegeTop = buttonHight - imageMaxTopY - (buttonHight/2.0 - buttonCenterHeight);
            imageEdegeLeft =  (buttonCenterX - imageCenterX);
            imageEdegeBottom = -imageEdegeTop;
            imageEdegeRight = - imageEdegeLeft;
            
            titleEdegeTop = - titleTopY + (buttonHight/2.0 - buttonCenterHeight);
            titleEdegeLeft =  (buttonCenterX - titleCenterX);
            titleEdegeBottom = -titleEdegeTop;
            titleEdegeRight = -titleEdegeLeft;
        }
            break;
        case UIButtonEdgeInsetsStyleRight:
        {
            imageEdegeTop = 0 ;
            imageEdegeLeft = titleSize.width - (buttonHight/2.0 - buttonCenterHeight);
            imageEdegeBottom = -imageEdegeTop;
            imageEdegeRight = - imageEdegeLeft;
            
            titleEdegeTop = 0 ;
            titleEdegeLeft =  (buttonHight/2.0 - buttonCenterHeight) -imageSize.width;
            titleEdegeBottom = -titleEdegeTop;
            titleEdegeRight = -titleEdegeLeft;
        }
            break;
        default:
            break;
    }
    [self setImageEdgeInsets:UIEdgeInsetsMake(imageEdegeTop, imageEdegeLeft, imageEdegeBottom, imageEdegeRight)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(titleEdegeTop, titleEdegeLeft, titleEdegeBottom, titleEdegeRight)];
    
}
@end
