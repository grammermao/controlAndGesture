//
//  UIAlertViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIAlertViewController.h"

//引用代理
@interface UIAlertViewController ()<UIAlertViewDelegate>

@end

@implementation UIAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIAlertView - 警告框";
    
    //定义
    UIAlertView *newAlert = [[UIAlertView alloc]initWithTitle:@"标题" message:@"nimabi" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"其他1",@"其他2", nil];
    
    //显示
    [newAlert show];
    
    //显示类型
    newAlert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
//    UIAlertViewStyleDefault = 0,  默认
//    UIAlertViewStyleSecureTextInput, 安全输入框
//    UIAlertViewStylePlainTextInput, 输入框
//    UIAlertViewStyleLoginAndPasswordInput 登录密码输入框
    
}

//点击按钮触发
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    //获取文本框的值
    NSString *longin = [alertView textFieldAtIndex:0].text;
    NSString *pwd = [alertView textFieldAtIndex:1].text;
    
    NSLog(@"用户名 %@ 密码 %@",longin,pwd);
    
    NSLog(@"点击了按钮索引:%ld",buttonIndex);
    
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    NSLog(@"点击按钮已经消失");
    
}

-(void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    NSLog(@"点击按钮即将消失");
}

-(void)willPresentAlertView:(UIAlertView *)alertView{
    
    NSLog(@"即将显示警告提醒");
}
-(void)didPresentAlertView:(UIAlertView *)alertView{
    
    NSLog(@"已经显示警告提醒");
    
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
