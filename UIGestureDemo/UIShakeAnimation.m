//
//  UIImageView+UIShakeAnimation.m
//  UIGestureDemo
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "UIShakeAnimation.h"

@implementation UIImageView (UIShakeAnimation)

- (void)shakeWithRaid:(CGFloat)raid duration:(NSTimeInterval)duration repeatCount:(NSInteger)count{
    
    //添加一个摇动的动画
    CABasicAnimation * shakeAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //设置时间
    shakeAnimation.duration = duration;
    //设置左右摇摆的幅度
    shakeAnimation.fromValue = [NSNumber numberWithFloat:-raid];
    shakeAnimation.toValue = [NSNumber numberWithFloat:raid];
    //设置自动倒带
    shakeAnimation.autoreverses = YES;
    //设置完成后自动移除动画
    shakeAnimation.removedOnCompletion = YES;
    
    //设置摇动的次数 FLT_MAX表示float的最大值
    if (count == 0) {
        shakeAnimation.repeatCount = FLT_MAX;
    }else{
        shakeAnimation.repeatCount = count;
    }
    
    //添加给视图并启动
    [self.layer addAnimation:shakeAnimation forKey:@"Let Shake"];
}
- (void)stopShake{
    //根据key值删除动画
    [self.layer removeAnimationForKey:@"Let Shake"];
}

@end
