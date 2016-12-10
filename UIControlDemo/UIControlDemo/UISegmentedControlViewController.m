//
//  UISegmentedControlViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UISegmentedControlViewController.h"

@interface UISegmentedControlViewController ()

@end

@implementation UISegmentedControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UISegmented - 分段选择视图";
    
    //创建
    UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems:@[@"年报",@"月报",@"周报"]];
    //设置位置及大小
    seg.frame = CGRectMake(100, 100, 200, 30);
    
    //添加事件
    [seg addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventValueChanged];
    
    //设置默认状态下背景图片
    [seg setBackgroundImage:[UIImage imageNamed:@"bar.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    //添加到父视图
    [self.view addSubview:seg];
    
}
//点击事件
-(void)onChange:(UISegmentedControl *)sender{
    
    NSLog(@"点击的索引值为：%ld",sender.selectedSegmentIndex);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
