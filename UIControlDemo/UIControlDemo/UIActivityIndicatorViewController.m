//
//  UIActivityIndicatorViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIActivityIndicatorViewController.h"

@interface UIActivityIndicatorViewController ()

@end

@implementation UIActivityIndicatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIActivityIndicator - 活动指示框";
    //创建
    UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc]init];
    
    //位置 设置到中心
    activity.center = self.view.center;
    
    //设置的样式
    activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
//    UIActivityIndicatorViewStyleWhiteLarge,
//    UIActivityIndicatorViewStyleWhite,
//    UIActivityIndicatorViewStyleGray,
    
    [self.view addSubview:activity];
    
    //调整显示比例
    activity.transform = CGAffineTransformMakeScale(5, 5);
    
    //启动动画
    [activity startAnimating];
    //停止动画
    //[activity stopAnimating];
    
    //显示在状态栏
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
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
