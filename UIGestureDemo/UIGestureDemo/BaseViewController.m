//
//  BaseViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController (){
    

    
}

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置动态背景色
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    
    _imgView = [[UIImageView alloc]init];
    
    
    //图片放在视图中间
    _imgView.bounds = CGRectMake(0, 0, 150, 150);
    _imgView.center = self.view.center;
    
    //设置图片
    _imgView.image = [UIImage imageNamed:@"img.jpg"];
    
    //响应用户事件
    _imgView.userInteractionEnabled = YES;
    
    [self.view addSubview:_imgView];

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
