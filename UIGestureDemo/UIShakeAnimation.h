//
//  UIImageView+UIShakeAnimation.h
//  UIGestureDemo
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (UIShakeAnimation)
//启动摇动的动画
- (void)shakeWithRaid:(CGFloat)raid duration:(NSTimeInterval)duration repeatCount:(NSInteger)count;

//停止动画
- (void)stopShake;

@end
