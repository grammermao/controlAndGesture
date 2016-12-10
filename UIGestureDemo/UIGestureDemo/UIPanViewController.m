//
//  UIPanViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIPanViewController.h"

@interface UIPanViewController ()

@end

@implementation UIPanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UIPan - 拖动";
    
    //创建拖动手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(onPan:)];
    
    //添加手势
    [self.imgView addGestureRecognizer:pan];
}

//拖动手势 事件
-(void)onPan:(UIPanGestureRecognizer *)pan{
    
    //设置为静态
    static CGPoint origin;
    //拖动开始
    if (pan.state == UIGestureRecognizerStateBegan) {
         origin = self.imgView.center;
    }
    //偏移量
    CGPoint offset = [pan translationInView:self.view];
    //重现设置中心点位置
    self.imgView.center = CGPointMake(origin.x+offset.x, origin.y+offset.y);
    
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
