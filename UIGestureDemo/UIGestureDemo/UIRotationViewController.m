//
//  UIRotationViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIRotationViewController.h"

@interface UIRotationViewController ()

@end

@implementation UIRotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UIRotation - 旋转";
    
    //创建旋转手势
    UIRotationGestureRecognizer *rotaition = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(onRotation:)];
    
    //添加手势
    [self.imgView addGestureRecognizer:rotaition];
}

//旋转触发事件
-(void)onRotation:(UIRotationGestureRecognizer *)rotation{
    //原始角度
    static CGFloat origin;
    //旋转视图   rotation.rotation旋转角度
    self.imgView.transform = CGAffineTransformMakeRotation(origin+rotation.rotation);
    
    //旋转结束的时候 纪录旋转角度
    if (rotation.state == UIGestureRecognizerStateEnded) {
        origin += rotation.rotation;
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
