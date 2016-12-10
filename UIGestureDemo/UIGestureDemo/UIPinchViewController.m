//
//  UIPinchViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIPinchViewController.h"

@interface UIPinchViewController ()

@end

@implementation UIPinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UIPinch - 捏合";
    
    //创建 捏合手势
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(onPinch:)];
    
    //添加手势
    [self.imgView addGestureRecognizer:pinch];
}

//捏合事件
-(void)onPinch:(UIPinchGestureRecognizer *)pinch{
    //原始的放大比例  初始值为 1
    static CGFloat origin = 1;
    
    //缩放比例  pinch.scale 缩放比例
    self.imgView.transform = CGAffineTransformMakeScale(origin*pinch.scale, origin*pinch.scale);
    
    
    //纪录最后缩放比例
    if (pinch.state == UIGestureRecognizerStateEnded) {
        origin = origin*pinch.scale;
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
