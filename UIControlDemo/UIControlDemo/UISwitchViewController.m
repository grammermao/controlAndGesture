//
//  UISwitchViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UISwitchViewController.h"

@interface UISwitchViewController ()

@end

@implementation UISwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //设置标题
    self.title = @"UISwitch - 开关";
    //创建
    UISwitch *newSwitch = [[UISwitch alloc]init];
    //设置大小位置
    newSwitch.frame = CGRectMake(100, 100, 100, 50);
    
    //触发事件 ValueChanged 类型
    [newSwitch addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventValueChanged];
    
    //添加到父视图
    [self.view addSubview:newSwitch];
    
    //按钮的颜色
    newSwitch.thumbTintColor = [UIColor redColor];
    newSwitch.tintColor = [UIColor blueColor];
    newSwitch.onTintColor = [UIColor orangeColor];

}
//事件
-(void)onChange:(UISwitch *)sender{
    
    //sender.isOn 判断开关状态
    
    //三元表达式   布尔表达式 ? 真值  : 非真值
    NSLog(@"开关状态：%@",sender.isOn == YES ? @"开" :@"关");
    
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
