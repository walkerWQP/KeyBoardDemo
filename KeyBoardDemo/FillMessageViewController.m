//
//  FillMessageViewController.m
//  KeyBoardDemo
//
//  Created by 铅笔 on 16/5/20.
//  Copyright © 2016年 com.YiWang. All rights reserved.
//

#import "FillMessageViewController.h"

@interface FillMessageViewController ()<UITextFieldDelegate>

@end

@implementation FillMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"填写资料";
    self.view.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:242.0/255.0 alpha:1.0];
    
    //创建视图
    [self initWithAllSubviews];
    
}

/**
 *  创建视图
 */
- (void) initWithAllSubviews
{
    //左侧 文字展示
    NSArray *array_title = @[@"昵    称:",@"手机号:",@"邮    箱:",@"密    码:",@"性    别:",@"个人说明:"];
    
    for (int i=0; i<6; i++) {
        UILabel *label_leftText = [[UILabel alloc] initWithFrame:CGRectMake(20, 104+30*i, 60, 20)];
        [self.view addSubview:label_leftText];
        label_leftText.text = array_title[i];
        label_leftText.font = [UIFont systemFontOfSize:13];
        
    }
    
    
      // textField
    NSArray *array_textFieldTitle = @[@"请输入昵称",@"请输入手机号",@"请输入邮箱",@"请输入密码",@"请输入性别"];
  
    for (int i=0; i<5; i++) {
        UITextField *textField_temp = [[UITextField alloc] initWithFrame:CGRectMake(80,100+30*i, 200, 25)];
        [self.view addSubview:textField_temp];
        textField_temp.placeholder = array_textFieldTitle[i];
        textField_temp.backgroundColor = [UIColor whiteColor];
        textField_temp.layer.cornerRadius = 3.0;
        textField_temp.clipsToBounds = YES;
        textField_temp.font = [UIFont systemFontOfSize:13];
        
        if (i==1 || i==3) {
            textField_temp.keyboardType = UIKeyboardTypeNumberPad;
        }
    }
    
    //textView
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 270+10, 260,120)];
    [self.view addSubview:textView];
    textView.backgroundColor = [UIColor whiteColor];
    textView.font = [UIFont systemFontOfSize:13];
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
