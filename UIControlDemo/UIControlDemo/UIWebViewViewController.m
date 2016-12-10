//
//  UIWebViewViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIWebViewViewController.h"

@interface UIWebViewViewController ()<UIWebViewDelegate>

@end

@implementation UIWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIWebView - 网页加载";
    
    //创建
    UIWebView *web = [[UIWebView alloc]init];
    //设置位置及大小
    web.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64);
    
    //网页地址
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    
    //定义网址请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    // 加载请求
    [web loadRequest:request];
    //设置代理
    web.delegate = self;
    //添加到父视图
    [self.view addSubview:web];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    NSLog(@"网页加载错误显示");
    
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    NSLog(@"网页已经开始加载");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"网页加载结束");
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
