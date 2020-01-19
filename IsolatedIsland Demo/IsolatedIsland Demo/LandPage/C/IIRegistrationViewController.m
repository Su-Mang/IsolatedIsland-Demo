//
//  IIRegistrationViewController.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIRegistrationViewController.h"
#import "IIRegistrationView.h"
#import "IIForgetPageViewController.h"
#import "IIHomePageViewController.h"
#import "IIFindPageViewController.h"
#import "IIMessageViewController.h"
#import "IIMineViewController.h"
@interface IIRegistrationViewController ()

@end

@implementation IIRegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _registrationView = [[IIRegistrationView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_registrationView];
    [self addTarget];
    
}
-(void) addTarget {
    [self.registrationView.forgetPasswordButton addTarget:self action:@selector(toForgetPage) forControlEvents:UIControlEventTouchUpInside];
    [self.registrationView.backButton addTarget:self action:@selector(toBack) forControlEvents:UIControlEventTouchUpInside];
    [self.registrationView.completeButton addTarget:self action:@selector(toLand) forControlEvents:UIControlEventTouchUpInside];
}
-(void)toForgetPage {
    IIForgetPageViewController * forgetPageViewController = [[IIForgetPageViewController alloc] init];
    [self presentViewController:forgetPageViewController animated:NO completion:nil];
    
}
-(void)toLand {
    IIFindPageViewController * findPageViewController = [[IIFindPageViewController alloc] init];
    IIMineViewController * mineViewController = [[IIMineViewController alloc] init];
    IIMessageViewController * messageViewController = [[IIMessageViewController alloc] init];
    IIHomePageViewController * homeViewController = [[IIHomePageViewController alloc] init];
    
    UINavigationController * findNavigationController = [[UINavigationController alloc]initWithRootViewController:findPageViewController];
    UINavigationController * mineNavigationController = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    UINavigationController * messageNavigationController = [[UINavigationController alloc] initWithRootViewController:messageViewController];
    UINavigationController * homeNavigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    
    [homeNavigationController setTitle:@"首页"];
    [findNavigationController setTitle:@"发现"];
    [messageNavigationController setTitle:@"消息"];
    [mineNavigationController setTitle:@"我的"];
    
    [homeNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"shouye-6.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [homeNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"shouye-7.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [findNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"yuan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [findNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"center.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [mineNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"weibiaoti--3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [mineNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"wodedangxuan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [messageNavigationController.tabBarItem setImage:[[UIImage imageNamed:@"xiaoxi-2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [messageNavigationController.tabBarItem setSelectedImage:[[UIImage imageNamed:@"xiaoxi-3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    NSArray * navigationControllerArry = [NSArray arrayWithObjects:homeNavigationController,findNavigationController,messageNavigationController,mineNavigationController, nil];
    
     UITabBarController * tabarController = [[UITabBarController alloc]init];
    [tabarController.tabBar setBackgroundColor:[UIColor whiteColor]];
    [tabarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [tabarController.tabBar setTintColor:[UIColor  blackColor]];
   // [tabarController.tabBar setTintColor:[UIColor colorWithRed:0.937254 green:0.937254 blue:0.937254 alpha:1]];
    tabarController.viewControllers =  navigationControllerArry;
    [self presentViewController:tabarController animated:NO completion:nil];
}
-(void)toBack {
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
