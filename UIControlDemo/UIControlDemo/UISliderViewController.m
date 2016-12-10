//
//  UISliderViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UISliderViewController.h"

@interface UISliderViewController ()

@end

@implementation UISliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UISlider - 滑块";
    
    UISlider *newSlider = [[UISlider alloc]init];
    //设置大小及位置
    newSlider.frame = CGRectMake(100, 100, 200, 50);
    
    //滑块的值
    newSlider.maximumValue = 10;
    newSlider.minimumValue = 0;
    //当前值
    newSlider.value = 5;
    
    //添加事件
    [newSlider addTarget:self action:@selector(onChange:) forControlEvents:UIControlEventValueChanged];
    
    //滑块 轨迹颜色
    newSlider.maximumTrackTintColor = [UIColor redColor];
    newSlider.minimumTrackTintColor = [UIColor orangeColor];
    
    //滑块图片设置
    newSlider.maximumValueImage = [UIImage imageNamed:@"jia.png"];
    newSlider.minimumValueImage = [UIImage imageNamed:@"jian.png"];
    
    // YES 值随时变化  NO 值变化停止的时候显示
    newSlider.continuous = YES;
    
    //添加到父视图
    [self.view addSubview:newSlider];
}

//事件
-(void)onChange:(UISlider *)sender{
    //显示当前值
    NSLog(@"当前值为：%.2f",sender.value);
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
