//
//  UITapViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UITapViewController.h"

@interface UITapViewController ()

@end

@implementation UITapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UITap - 点击";
    
    //创建点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTap:)];
    
    //点击次数  单击
    tap.numberOfTapsRequired = 1;
    
    //手势个数
    tap.numberOfTouchesRequired = 2;
    
    
    //添加手势
    [self.imgView addGestureRecognizer:tap];
    
    //定义双击手势
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTap:)];
    
    //点击次数  双击
    doubleTap.numberOfTapsRequired = 2;
    //添加手势
    [self.imgView addGestureRecognizer:doubleTap];
    
    //单击失败 识别为双击
    [tap requireGestureRecognizerToFail:doubleTap];
    
    
}

//双击事件
-(void)doubleTap:(UITapGestureRecognizer *)tap{
    
    //缩小
    self.imgView.bounds = CGRectMake(0, 0, 150, 150);
    self.imgView.center = self.view.center;
    
    
}

//手势触发事件
-(void)onTap:(UITapGestureRecognizer *)tap{
    
    self.imgView.bounds = self.view.bounds;
    
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
