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
}
-(void)toForgetPage {
    IIForgetPageViewController * forgetPageViewController = [[IIForgetPageViewController alloc] init];
    [self presentViewController:forgetPageViewController animated:NO completion:nil];
}
-(void)toBack {
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
