//
//  UILongPressViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UILongPressViewController.h"
#import "UIShakeAnimation.h"
@interface UILongPressViewController ()

@end

@implementation UILongPressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"UILongPress - 长按";
    
    //定义 长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(onLongPress:)];
    
    // 长按时间设置
    longPress.minimumPressDuration =3;
    
    //添加手势
    [self.imgView addGestureRecognizer:longPress];
    
    //单击手势
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTap:)];
    
    [self.imgView addGestureRecognizer:tap];
    
}

//响应单击
-(void)onTap:(UITapGestureRecognizer *)tap{
    
    //停止晃动
    [self.imgView stopShake];
    
}


//响应事件
-(void)onLongPress:(UILongPressGestureRecognizer *)longPress{
    
    NSLog(@"响应了长按事件");
    // 晃动幅度  时间间隔  重复次数
    [self.imgView shakeWithRaid:0.4 duration:0.5 repeatCount:0];
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
