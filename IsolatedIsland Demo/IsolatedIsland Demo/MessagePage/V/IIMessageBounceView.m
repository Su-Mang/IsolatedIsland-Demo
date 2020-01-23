//
//  IIMessageBounceView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/23.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMessageBounceView.h"
#import "IIMessagecellView.h"
#import <Masonry.h>
@interface IIMessageBounceView ()
@property (nonatomic, strong) UIView * contentView;
@property (nonatomic, strong) IIMessagecellView * addFriendView;
@property (nonatomic, strong) IIMessagecellView * friendListView;
@property (nonatomic, strong) IIMessagecellView * scanView;
@end
@implementation IIMessageBounceView
- (void)setupContent {
    self.frame = [UIScreen mainScreen].bounds;
     self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
     self.userInteractionEnabled = YES;
    if (_contentView == nil) {
        _contentView = [[UIView alloc]init];
        _contentView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_contentView];
        _contentView.layer.cornerRadius = 10;
        [_contentView  mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-20);
            make.width.mas_equalTo(140);
            make.height.mas_equalTo(150);
        }];
        
        _addFriendView = [[IIMessagecellView alloc] initWithFrame:CGRectMake(0, 0, 140, 50)];
        [self.contentView addSubview:_addFriendView];
        _addFriendView.nameLabel.text = @"邀请好友";
        [_addFriendView.picimageView setImage:[UIImage imageNamed:@"tianjia.png"]];
        
        _friendListView = [[IIMessagecellView alloc] initWithFrame:CGRectMake(0, 50, 140, 50)];
        [self.contentView addSubview:_friendListView];
        _friendListView.nameLabel.text = @"好友列表";
        [_friendListView.picimageView setImage:[UIImage imageNamed:@"haoyou.png"]];
     
        _scanView = [[IIMessagecellView alloc] initWithFrame:CGRectMake(0, 100, 140, 50)];
        _scanView.nameLabel.text = @"扫一扫";
        [_scanView.picimageView setImage:[UIImage imageNamed:@"saoyisao-2.png"]];
        [self.contentView addSubview:_scanView];
        [_scanView.clickButton setTitle:@"123" forState:UIControlStateNormal];
        [_scanView.clickButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        
        
        
    }
}
-(void)click {
    NSLog(@"12");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self disMissView];
}
- (void)disMissView {
    [self removeFromSuperview];
    [self.contentView removeFromSuperview];
}
- (void)showInView:(UIView *)view {
    [self setupContent];
    [view addSubview:self];
    
}

@end
