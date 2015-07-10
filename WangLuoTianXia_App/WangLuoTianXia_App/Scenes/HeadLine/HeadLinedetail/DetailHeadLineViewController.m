//
//  DetailHeadLineViewController.m
//  WangLuoTianXia_App
//
//  Created by lanou3g on 15/7/9.
//  Copyright (c) 2015年 文艺范儿. All rights reserved.
//

#import "DetailHeadLineViewController.h"
#import "DetailHeadLine.h"

@interface DetailHeadLineViewController ()
@property (nonatomic, retain) DetailHeadLine *detailHeadLine;
@end

@implementation DetailHeadLineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailHeadLine = [[DetailHeadLine alloc] init];
    self.view = _detailHeadLine;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"17pj_"] style:UIBarButtonItemStyleDone target:self action:@selector(leftBarbuttonAction:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"17pj_"] style:UIBarButtonItemStyleDone target:self action:@selector(rightBarbuttonAcion:)];
}
- (void)leftBarbuttonAction:(UIBarButtonItem *)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
- (void)rightBarbuttonAcion:(UIBarButtonItem *)sender
{
    UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:@"提示" message:@"收藏该条新闻？" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alertView show];
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
