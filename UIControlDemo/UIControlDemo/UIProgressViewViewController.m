//
//  UIProgressViewViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIProgressViewViewController.h"

@interface UIProgressViewViewController ()

@end

@implementation UIProgressViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIProgress - 进度条";

    //创建
    
    UIProgressView *progress = [[UIProgressView alloc]init];
    
    //设置位置及大小
    progress.frame = CGRectMake(100, 100, 200, 30);
    
    //进度位置 0到1 之间的小数
    progress.progress = 0.5;
    
    //进度条颜色
    progress.trackTintColor = [UIColor redColor];
    progress.progressTintColor = [UIColor blackColor];
    
    //添加父视图
    [self.view addSubview:progress];
    
    //定义定时器   userInfo用户数据的参数定义为进度条
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(onChange:) userInfo:progress repeats:YES];
}
//定时器触发
-(void)onChange:(NSTimer *)timer{
   
    //通过定时器 参数获得对象
    UIProgressView *progress = timer.userInfo;
    //判断进度情况
    if (progress.progress < 1) {
        progress.progress += 0.01;
    }else{
        
        //弹出提示消息
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"下载完成" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];

        [alert show];
        
        progress.progress = 0;
        //定时器停止
        [timer setFireDate:[NSDate distantFuture]];
        
    }
    
    
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
