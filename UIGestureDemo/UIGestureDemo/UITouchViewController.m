//
//  UITouchViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UITouchViewController.h"

@interface UITouchViewController ()

@end

@implementation UITouchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"UITouch － 触摸";
    
}
//触摸 开始
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"触摸开始");
    
}

//触摸  中断
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"触摸中断");
}

// 触摸结束
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"触摸结束");
}

//触摸  移动
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"触摸在移动");
    
    //触摸定位
    UITouch *touch = [touches anyObject];
    //定位位置点  当前视图位置
    CGPoint curPoint = [touch locationInView:self.view];
    //定位图片中心
    self.imgView.center = curPoint;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
