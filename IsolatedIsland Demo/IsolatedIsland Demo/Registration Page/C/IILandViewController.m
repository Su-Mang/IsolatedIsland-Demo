//
//  IILandViewController.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/16.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IILandViewController.h"
#import "IILandView.h"
#import "IIRegistrationViewController.h"
@interface IILandViewController ()

@end

@implementation IILandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.landView = [[IILandView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_landView];
    [self addTarget];
    
}
-(void) addTarget {
    [self.landView.backbutton addTarget:self action:@selector(didBack) forControlEvents:UIControlEventTouchUpInside];
    [self.landView.visibleButton addTarget:self action:@selector(isVisible:) forControlEvents:UIControlEventTouchUpInside];
    [self.landView.landButton addTarget:self action:@selector(toLand) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)didBack {
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(void)isVisible :(UIButton *)visiableButton {
    visiableButton.selected = !visiableButton.selected;
    self.landView.passwordTextField.secureTextEntry = !self.landView.passwordTextField.secureTextEntry;
}

-(void)toLand {
    IIRegistrationViewController * resitrationViewController = [[IIRegistrationViewController alloc] init];
    [self presentViewController:resitrationViewController animated:NO completion:nil];
}

@end
