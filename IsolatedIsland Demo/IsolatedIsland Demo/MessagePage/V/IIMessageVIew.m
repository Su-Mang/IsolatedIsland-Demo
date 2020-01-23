//
//  IIMessageVIew.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/21.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMessageVIew.h"
#import "IIMessageGroupModel.h"
#import "IIGroupMessageTableViewCell.h"
#import "IIMessageBounceView.h"
#import <Masonry.h>
@interface IIMessageVIew ()<UITableViewDelegate, UITableViewDataSource>
@end
@implementation IIMessageVIew
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    #pragma mark  存放数据数组
        _groupMutableArry = [[NSMutableArray alloc]init];
        [self addGroupMUtable:@"tishi.png" :@"动态通知" :@"花伦先生评论了你的信签" :@"20分钟前"];
        [self addGroupMUtable:@"fangke.png" :@"主页访客记录" :@"最近有五个人访问了你的主页" :@"2019.11.04"];
        [self addGroupMUtable:@"sixin.png" :@"历史私信记录" :@"超过七天未通信的将会自动放进这里" :@"2019.11.04"];
    #pragma mark  消息界面标题
        _smallMessageLabel = [[UILabel alloc] init];
        [self addSubview:_smallMessageLabel];
        [_smallMessageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(50);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(10);
        }];
        _smallMessageLabel.text = @"消息箱";
        _smallMessageLabel.textColor = [UIColor grayColor];
        _smallMessageLabel.font = [UIFont systemFontOfSize:10];
        //_smallmineLabel.font = [UIFont fontWithName:@"Beirut" size:5];
        
        _messageLabel = [[UILabel alloc] init];
        [self addSubview:_messageLabel];
        [_messageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_smallMessageLabel.mas_bottom).offset(-5);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(40);
        }];
        _messageLabel.text = @"Message box";
        _messageLabel.textColor = [UIColor blackColor];
        _messageLabel.font = [UIFont fontWithName:@"Marker Felt" size:20];
        
        _addFriendButton = [[UIButton alloc] init];
        [self addSubview:_addFriendButton];
        [_addFriendButton setImage:[UIImage imageNamed:@"jiahaoyou.png"] forState:UIControlStateNormal];
        [_addFriendButton addTarget:self action:@selector(addView) forControlEvents:UIControlEventTouchUpInside];
        [_addFriendButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_smallMessageLabel.mas_bottom).offset(-5);
            make.right.mas_equalTo(self).offset(-20);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        _groupTableview = [[UITableView alloc] init];
        [self addSubview:_groupTableview];
        [_groupTableview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_addFriendButton.mas_bottom);
            make.right.left.mas_equalTo(self);
            make.bottom.mas_equalTo(self).offset(-83);
        }];
        _groupTableview.delegate = self;
        _groupTableview.dataSource = self;
    }
    return self;
}


-(void)addView {
    IIMessageBounceView * messageView =[[IIMessageBounceView alloc]init];
    [messageView showInView:self];
}

#pragma mark tableview布局

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _groupMutableArry.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 75;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * tableViewId = @"666";
    IIGroupMessageTableViewCell * messageTableView = [tableView dequeueReusableCellWithIdentifier:tableViewId];
    if(!messageTableView) {
        messageTableView =  [[IIGroupMessageTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewId];
    }
    IIMessageGroupModel * messagemodel = [[IIMessageGroupModel alloc]init];
    messagemodel = _groupMutableArry[indexPath.section];
    [messageTableView.picImageView setImage:[UIImage imageNamed:messagemodel.picStr]];
    
    messageTableView.titleLabel.text = messagemodel.nameStr;
    messageTableView.detailLabel.text = messagemodel.deatilStr;
    messageTableView.timeLabel.text = messagemodel.timeStr;
    messageTableView.selectionStyle = UIAccessibilityTraitNone;
    return messageTableView;
    
    
}

-(void)addGroupMUtable:(NSString *)picStr :(NSString *)nameStr :(NSString *)deatilStr :(NSString *)timeStr {
    IIMessageGroupModel * messagemodel = [[IIMessageGroupModel alloc] init];
    messagemodel.picStr = picStr;
    messagemodel.nameStr = nameStr;
    messagemodel.deatilStr = deatilStr;
    messagemodel.timeStr = timeStr;
    [_groupMutableArry addObject:messagemodel];
}
@end
