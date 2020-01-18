//
//  IIForgetPageViewController.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIForgetPageViewController.h"
#import "IIForgetView.h"
@interface IIForgetPageViewController ()

@end

@implementation IIForgetPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _forgetView = [[IIForgetView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_forgetView];
    [self addTarget];
}
-(void) addTarget {
    [self.forgetView.backButton addTarget:self action:@selector(toBack) forControlEvents:UIControlEventTouchUpInside];
}

-(void)toBack {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
