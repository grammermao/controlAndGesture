//
//  UIActionSheetViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIActionSheetViewController.h"
// 引用代理
@interface UIActionSheetViewController ()<UIActionSheetDelegate>

@end

@implementation UIActionSheetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIActionSheetView - 提示框";
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"共享" style:UIBarButtonItemStyleDone target:self action:@selector(onClick)];
    
    
    
}
//触发事件
-(void)onClick{
    
    //创建
    UIActionSheet *newAction = [[UIActionSheet alloc]initWithTitle:@"分享" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"销毁" otherButtonTitles:@"新浪",@"微信",@"QQ", nil];
    
    //显示
    [newAction showInView:self.view];
}

//点击按钮触发代理事件
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSLog(@"点击按钮索引- %ld",buttonIndex);
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
