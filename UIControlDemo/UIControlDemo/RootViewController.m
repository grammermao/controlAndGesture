//
//  RootViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //定义主页背景色
    self.view.backgroundColor = [UIColor whiteColor];
    //定义主页标题
    self.navigationItem.title = @"控件演示";
    
    //动态创建按钮
    
    //定义标题数组
    NSArray *titleArray = @[@"UISwitch",
                            @"UISlider",
                            @"UIAlertView",
                            @"UIActivityIndicatorView",
                            @"UIActionSheet",
                            @"UIStepper",
                            @"UISegmentedControl",
                            @"UIProgressView",
                            @"UITextView",
                            @"UIPickerView",
                            @"UIDatePicker",
                            @"UIWebView"];
    //循环创建按钮
    
    for (int i= 0; i<titleArray.count; i++) {
        //创建按钮
        UIButton *btn = [[UIButton alloc]init];
        //按钮的位置及大小
        btn.frame = CGRectMake(50, 80+i*45, 280, 35);
        //设置背景色
        btn.backgroundColor = [UIColor blackColor];
        //设置标题
        [btn setTitle:titleArray[i] forState:UIControlStateNormal];
        //设置标识值
        btn.tag = 100+i;
        //添加事件 带参数
        [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        //添加到父视图
        [self.view addSubview:btn];
    }
}
//按钮事件
-(void)onClick:(UIButton *)sender{
    //类数组
    NSArray *classArray = @[@"UISwitchViewController",
                            @"UISliderViewController",
                            @"UIAlertViewController",
                            @"UIActivityIndicatorViewController",
                            @"UIActionSheetViewController",
                            @"UIStepperViewController",
                            @"UISegmentedControlViewController",
                            @"UIProgressViewViewController",
                            @"UITextViewViewController",
                            @"UIPickerViewController",
                            @"UIDatePickerViewController",
                            @"UIWebViewViewController"];
    
    //通过字符串获取类名
    
    NSString *className = classArray[sender.tag - 100];
    
    Class cls = NSClassFromString(className);
    
    UIViewController *v = [[cls alloc]init];
    
    //显示UIViewController
    [self.navigationController pushViewController:v animated:YES];
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
