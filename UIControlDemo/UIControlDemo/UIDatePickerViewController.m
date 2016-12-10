//
//  UIDatePickerViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIDatePickerViewController.h"

@interface UIDatePickerViewController ()

@end

@implementation UIDatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"IDatePicker － 选择日期";
    
    //创建
    UIDatePicker *pick = [[UIDatePicker alloc]init];
    //设置位置及大小
    pick.frame = CGRectMake(50, 100, 300, 200);
    
    //选择显示时间的类型
    pick.datePickerMode = UIDatePickerModeTime;
    
//    UIDatePickerModeTime  时间
//    UIDatePickerModeDate, 日期
//    UIDatePickerModeDateAndTime 时间和日期
//    UIDatePickerModeCountDownTimer 计时器
    //分钟分割时间 可以被60整除
      pick.minuteInterval = 5;
    
    // 区域设置
    [pick setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh_cn"]];
    // 时间设置
    [pick setTimeZone:[NSTimeZone defaultTimeZone]];
    
    //添加父视图
    [self.view addSubview:pick];
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
