//
//  HeadLineTableViewController.m
//  WangLuoTianXia_App
//
//  Created by lanou3g on 15/7/9.
//  Copyright (c) 2015年 文艺范儿. All rights reserved.
//

#import "HeadLineTableViewController.h"
#import "HeadLineCell.h"
#import "DetailHeadLineViewController.h"
#import "RecreationTableViewController.h"
@interface HeadLineTableViewController ()<UIScrollViewDelegate>

@property (nonatomic, retain) UIPageControl *pageControl;

@end

@implementation HeadLineTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *MyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
    MyView.backgroundColor = [UIColor redColor];
    [self.tableView addSubview:MyView];
    self.ImageScrollView= [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
    _ImageScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, 100);
    _ImageScrollView.showsHorizontalScrollIndicator = NO;
    _ImageScrollView.showsVerticalScrollIndicator = NO;
    _ImageScrollView.alwaysBounceHorizontal = YES;
//    设置边缘弹动效果
    _ImageScrollView.bounces = NO;
//    设置单页滚动
    _ImageScrollView.pagingEnabled = YES;
    
    [MyView addSubview:_ImageScrollView];
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(310, 225, 20, 20)];
    _pageControl.backgroundColor = [UIColor clearColor];
    [MyView addSubview:_pageControl];
    
    NSInteger count = 4;
    for (int i = 0; i < 4; i++) {
        NSString *imgName =[NSString stringWithFormat:@"%dpj_", i];
        UIImage *image = [UIImage imageNamed:imgName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(_ImageScrollView.frame.size.width * i, 0, _ImageScrollView.frame.size.width, _ImageScrollView.frame.size.height);
        [_ImageScrollView addSubview:imageView];
        
        _ImageScrollView.contentSize = CGSizeMake(_ImageScrollView.frame.size.width *count, 250);
        _pageControl.numberOfPages = count;
        
       
        
    }
//    视图代理和小点点代理
     self.ImageScrollView.delegate = self;
      [_pageControl addTarget:self action:@selector(PageControlAction:) forControlEvents:UIControlEventValueChanged];
    
}


 
    

//结束滚动的方法
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    self.pageControl.currentPage = scrollView.contentOffset.x / self.ImageScrollView.frame.size.width;
}
- (void)PageControlAction:(UIPageControl *)sender
{
    [self.ImageScrollView setContentOffset:CGPointMake(self.ImageScrollView.frame.size.width * sender.currentPage, 0) animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 14;
}
- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    static NSString *identify = @"Headlinecell";
    HeadLineCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[HeadLineCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    
    cell.MyHeadLineLabelTitle.text = @"fdsafda";
    cell.MyHeadLineLabelIntro.text = @"只是测试而已啊";
    cell.MyHeadLineImageView.image = [UIImage imageNamed:@"warning"];
    cell.MyHeadLineLabelNum.text = @"567";
    cell.MyHeadLineLabelTitle.numberOfLines = 0;
    cell.MyHeadLineLabelTitle.text = @"每日fsdfsdfdsfdffsf";
    cell.MyHeadLineLableFollow.text = @"跟帖";
    
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailHeadLineViewController *detailHeadLine =[[DetailHeadLineViewController alloc] init];
    [self.navigationController pushViewController:detailHeadLine animated:YES];
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *views = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    views.backgroundColor = [UIColor whiteColor];
    self.MyScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    self.MyScrollView.contentSize = CGSizeMake(500, 50);
    //    滚动条水平滑动
    //    滚动条不显示水平方向的滚动条
    self.MyScrollView.showsHorizontalScrollIndicator = NO;
    self.MyScrollView.showsVerticalScrollIndicator = NO;
    [views addSubview:_MyScrollView];
    

    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(4, -10, 50, 50)];
    [_Mybutton setTitle:@"头条" forState:UIControlStateNormal];
    _Mybutton.tag = 10;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(58, -10, 50, 50)];
    [_Mybutton setTitle:@"娱乐" forState:UIControlStateNormal];
    _Mybutton.tag = 20;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(112, -10, 50, 50)];
    [_Mybutton setTitle:@"热点" forState:UIControlStateNormal];
    _Mybutton.tag = 30;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(166, -10, 50, 50)];
    [_Mybutton setTitle:@"汽车" forState:UIControlStateNormal];
    _Mybutton.tag = 40;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(220, -10, 50, 50)];
    [_Mybutton setTitle:@"时尚" forState:UIControlStateNormal];
    _Mybutton.tag = 50;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(280, -10, 50, 50)];
    [_Mybutton setTitle:@"军事" forState:UIControlStateNormal];
    _Mybutton.tag = 60;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(340, -10, 50, 50)];
    [_Mybutton setTitle:@"旅游" forState:UIControlStateNormal];
    _Mybutton.tag = 70;
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(400, -10, 50, 50)];
    [_Mybutton setTitle:@"数码" forState:UIControlStateNormal];
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    
    _Mybutton = [[UIButton alloc] initWithFrame:CGRectMake(450, -10, 50, 50)];
    [_Mybutton setTitle:@"游戏" forState:UIControlStateNormal];
    [_Mybutton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [_Mybutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.MyScrollView addSubview:_Mybutton];
    return views;
}

- (void)ButtonAction:(UIButton *)sender
{
    
        
        NSLog(@"dianba");
   
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
