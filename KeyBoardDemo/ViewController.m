//
//  ViewController.m
//  KeyBoardDemo
//
//  Created by 铅笔 on 16/5/20.
//  Copyright © 2016年 com.YiWang. All rights reserved.
//

#import "ViewController.h"
#import "FillMessageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"头部视图";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建视图
    [self initWithAllSubviews];
}

/**
 *  创建视图
 */
- (void) initWithAllSubviews
{
    UIButton *button_first = [[UIButton alloc] initWithFrame:CGRectMake(0, 64+20, self.view.frame.size.width, 40)];
    [self.view addSubview:button_first];
    
    button_first.backgroundColor = [UIColor purpleColor];
    [button_first setTitle:@"填写资料" forState:UIControlStateNormal];
    
    [button_first addTarget:self action:@selector(interIntoFillMessageView) forControlEvents:UIControlEventTouchUpInside];

}

/**
 *  点击button 执行事件
 */
- (void) interIntoFillMessageView
{

    FillMessageViewController *fillMessage = [[FillMessageViewController alloc] init];
    [self.navigationController pushViewController:fillMessage animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
