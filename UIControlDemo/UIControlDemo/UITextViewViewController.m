//
//  UITextViewViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UITextViewViewController.h"

@interface UITextViewViewController ()

@end

@implementation UITextViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UITextView - 文本视图";
    
    //创建
    UITextView *txtView = [[UITextView alloc]init];
    
    //设置位置及大小
    txtView.frame = CGRectMake(100, 100, 200, 200);
    
    //设置背景色
    txtView.backgroundColor = [UIColor orangeColor];
    
    //设置字体
    txtView.font = [UIFont systemFontOfSize:40];
    
    //设置字体颜色
    txtView.textColor = [UIColor redColor];
    //首字母大写设置
    txtView.autocorrectionType = UITextAutocapitalizationTypeNone;
    
    //滚动条的显示  YES 有滚动条   NO 无滚动条
    txtView.scrollEnabled = YES;
    
    
    //添加到父视图
    [self.view addSubview:txtView];
    
    
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
