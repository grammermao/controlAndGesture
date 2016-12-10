//
//  UIStepperViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIStepperViewController.h"

@interface UIStepperViewController ()

@end

@implementation UIStepperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIStepper - 步数器";
    
    //创建
    UIStepper *newStepper = [[UIStepper alloc]init];
    //设置位置及大小
    newStepper.frame = CGRectMake(100, 100, 100, 50);
    
    //找到值
    newStepper.maximumValue = 10;
    newStepper.minimumValue = 0;
    newStepper.value = 5;
    //添加事件
    [newStepper addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventValueChanged];
    
    //YES 计数循环进行   NO 计数不循环 默认值
    newStepper.wraps = NO;
    
    //添加图片
    UIImage *imgAdd = [[UIImage imageNamed:@"jia.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage *imgSub = [[UIImage imageNamed:@"jian.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [newStepper setDecrementImage:imgSub forState:UIControlStateNormal];
    [newStepper setIncrementImage:imgAdd forState:UIControlStateNormal];
    
    
    //添加到父视图
    [self.view addSubview:newStepper];
}
//事件
-(void)onChange:(UIStepper *)sender{
    
    //输出当前的值
    NSLog(@"当前值为：%.2f",sender.value);
    
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
