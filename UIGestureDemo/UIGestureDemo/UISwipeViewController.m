//
//  UISwipeViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UISwipeViewController.h"

@interface UISwipeViewController ()

@end

@implementation UISwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UISwipe - 滑动";
    
    //创建 滑动手势
    UISwipeGestureRecognizer *swip = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwip:)];
    
    //设置了滑动手势的方向
    swip.direction = UISwipeGestureRecognizerDirectionDown;
   
    //添加手势
    [self.imgView addGestureRecognizer:swip];
    
}
//响应手势
-(void)onSwip:(UISwipeGestureRecognizer *)swip{
    
    NSLog(@"滑动手势");

    //滑动方向 swip.direction
    
    //向下滑动
    if (swip.direction == UISwipeGestureRecognizerDirectionDown) {
        
        self.imgView.center =CGPointMake(self.imgView.center.x, self.imgView.center.y+10);
        
    }
    
  
    
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
