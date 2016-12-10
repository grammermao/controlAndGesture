//
//  UIPickerViewController.m
//  UIControlDemo
//
//  Created by brook song on 15/12/16.
//  Copyright (c) 2015年 brook song. All rights reserved.
//

#import "UIPickerViewController.h"

//引用代理
//UIPickerViewDataSource 数据源
//UIPickerViewDelegate 数据处理
@interface UIPickerViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>{
    
    NSArray *nameArray;//名称数组
    NSArray *ageArray; //年龄数组
    
}

@end

@implementation UIPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIPickerView - 选择器";
    //创建
    UIPickerView *pick = [[UIPickerView alloc]init];
    //设置位置和大小
    pick.frame = CGRectMake(100, 100, 200, 200);
    
    //数组赋值
    nameArray = @[@"张三",@"李四",@"王五"];
    ageArray = @[@"1990",@"1991",@"1992",@"1993",@"1994"];
    
    //设置代理
    pick.delegate = self;
    pick.dataSource = self;
    
    
    //添加到父视图
    [self.view addSubview:pick];
    
    
}
#pragma mark - 数据源处理
// returns the number of 'columns' to display.
// 返回显示的列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 2;
}
// 返回每一列的行数
// returns the # of rows in each component..

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    // 返回第一列的行数
    if (component == 0 ) {
        return nameArray.count;
    }else{
        
    // 返回第二列的行数
        return  ageArray.count;
    }
    
}

#pragma mark - 数据源处理 结束

#pragma mark - 处理数据

//返回数据
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0) {
        return nameArray[row];
    }
    else{
        return ageArray[row];
    }
}
//当已经选中行某行执行
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString *str;
    //第一列
    if (component == 0 ) {
        str = nameArray[row];
    }
    //第二列
    if (component == 1) {
        str = ageArray[row];
    }
    
    NSLog(@"选中的值为:%@",str);
}
#pragma mark - 处理数据 结束


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
