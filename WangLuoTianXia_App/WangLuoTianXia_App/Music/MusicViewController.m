//
//  MusicViewController.m
//  WangLuoTianXia_App
//
//  Created by lanou3g on 15/7/9.
//  Copyright (c) 2015年 文艺范儿. All rights reserved.
//

#import "MusicViewController.h"

@interface MusicViewController ()

@property (nonatomic, retain) UIView *Rodund;

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Rodund = [[UIView alloc] init];
    self.Rodund.frame = CGRectMake(40, 150, 300, 300);
    _Rodund.backgroundColor = [UIColor redColor];
    _Rodund.layer.cornerRadius = 150;
    _Rodund.layer.masksToBounds = YES;
    [self.view addSubview:_Rodund];
    
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(test) userInfo:nil repeats:YES];
    
}
- (void)test
{   [UIView beginAnimations:nil context:nil];
    _Rodund.transform = CGAffineTransformRotate(_Rodund.transform, M_PI_4);
    [UIView commitAnimations];
    
    
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
