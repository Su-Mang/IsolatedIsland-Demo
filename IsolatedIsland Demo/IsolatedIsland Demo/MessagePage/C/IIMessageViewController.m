//
//  IIMessageViewController.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMessageViewController.h"
#import "IIMessageVIew.h"
@interface IIMessageViewController ()

@end

@implementation IIMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    _messageview =  [[IIMessageVIew alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_messageview];
    
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
