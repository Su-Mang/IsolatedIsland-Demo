//
//  IILandRegistrationViewController.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/16.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IILandRegistrationViewController.h"

@interface IILandRegistrationViewController ()

@end

@implementation IILandRegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _landView = [[IILandView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_landView];
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
