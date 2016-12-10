//
//  RootViewController.m
//  UIGestureDemo
//
//  Created by brook song on 15/12/17.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"手势演示";
    
    // 动态创建按钮
    
    NSArray *titleArray = @[@"UITouch",@"UITap",@"UILongPress",@"UISwipe",@"UIPan",@"UIRotation",@"UIPinch"];
    
    
    for (int i=0 ; i<titleArray.count; i++) {
        
        UIButton *btn = [[UIButton alloc]init];
        
        btn.frame = CGRectMake(50, 80+i*70, 280, 50);
        
        btn.backgroundColor = [UIColor blackColor];
        
        [btn setTitle:titleArray[i] forState:UIControlStateNormal];
        
        btn.tag = 100+i;
        
        [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
 
}

-(void)onClick:(UIButton *)sender{
    
    NSArray *classArray = @[@"UITouchViewController",@"UITapViewController",@"UILongPressViewController",@"UISwipeViewController",@"UIPanViewController",@"UIRotationViewController",@"UIPinchViewController"];
    
    //类的名称  通过Tag值获取
    NSString *className = classArray[sender.tag -100];
    
    //通过字符串获取类
    Class cls = NSClassFromString(className);
    
    UIViewController *v = [[cls alloc]init];
    
    //导航到下一个视图
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
