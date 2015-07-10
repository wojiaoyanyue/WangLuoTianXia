//
//  AppDelegate.m
//  WangLuoTianXia_App
//
//  Created by lanou3g on 15/7/9.
//  Copyright (c) 2015年 文艺范儿. All rights reserved.
//

#import "AppDelegate.h"
#import "HeadLineTableViewController.h"
#import "HeadLineTableViewController.h"
#import "ReadTableViewController.h"
#import "MineTableViewController.h"
#import "MusicViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    HeadLineTableViewController *oneTVC = [HeadLineTableViewController new];
    UINavigationController *oneNC = [[UINavigationController alloc] initWithRootViewController:oneTVC];
    oneNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"新闻" image:[UIImage imageNamed:@"17pj_"] selectedImage:[UIImage imageNamed:@"17pj_"]];
    ReadTableViewController *readTVC = [ReadTableViewController new];
    UINavigationController *readNC = [[UINavigationController alloc] initWithRootViewController:readTVC];
    readNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"阅读" image:[UIImage imageNamed:@"17pj_"] selectedImage:[UIImage imageNamed:@"17pj_"]];
    MineTableViewController *mineTVC = [MineTableViewController new];
    UINavigationController *mineNC = [[UINavigationController alloc] initWithRootViewController:mineTVC];
    mineNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"17pj_"] selectedImage:[UIImage imageNamed:@"17pj_"]];
    MusicViewController *musicTVC = [MusicViewController new];
    UINavigationController *musicNC = [[UINavigationController alloc] initWithRootViewController:musicTVC];
    musicNC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"音乐电台" image:[UIImage imageNamed:@"17pj_"] selectedImage:[UIImage imageNamed:@"17pj_"]];
    //    创建标签控制器
    UITabBarController *rootTVB = [[UITabBarController alloc] init];
    // 包含所有自控制器
    rootTVB.viewControllers = @[oneNC, readNC, musicNC, mineNC];
    self.window.rootViewController = rootTVB;
    //    设置默认选中的Item
    rootTVB.selectedIndex = 0;
    //    设置整体和选中的渲染颜色
    rootTVB.tabBar.barTintColor = [UIColor whiteColor];
    rootTVB.tabBar.tintColor = [UIColor redColor];

    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
