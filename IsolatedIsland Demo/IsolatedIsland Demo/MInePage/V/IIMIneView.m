//
//  IIMIneView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMIneView.h"
#import "IIMIneFourView.h"
#import <Masonry.h>
@implementation IIMIneView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _smallmineLabel = [[UILabel alloc] init];
        [self addSubview:_smallmineLabel];
        [_smallmineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(50);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(10);
        }];
        _smallmineLabel.text = @"我的";
        _smallmineLabel.textColor = [UIColor grayColor];
        _smallmineLabel.font = [UIFont systemFontOfSize:8];
        //_smallmineLabel.font = [UIFont fontWithName:@"Beirut" size:5];
    
        _mineLabel = [[UILabel alloc] init];
        [self addSubview:_mineLabel];
        [_mineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_smallmineLabel.mas_bottom).offset(-5);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(40);
        }];
        _mineLabel.text = @"Mine";
        _mineLabel.textColor = [UIColor blackColor];
        _mineLabel.font = [UIFont fontWithName:@"Marker Felt" size:20];
        
        _picImageView = [[UIImageView alloc] init];
        [self addSubview:_picImageView];
        [_picImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_smallmineLabel.mas_bottom).offset(50);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
         _picImageView.layer.cornerRadius = 10;
        _picImageView.layer.masksToBounds = YES;
        _picImageView.image = [UIImage imageNamed:@"img-296933adb8764cbdf1f6e081ebde5d45.jpg"];
        
        
        _nameLabel = [[UILabel alloc] init];
        [self addSubview:_nameLabel];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_smallmineLabel.mas_bottom).offset(60);
            make.left.mas_equalTo(self->_picImageView.mas_right).offset(10);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(40);
        }];
        _nameLabel.text = @"花轮先森";
        _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.font = [UIFont fontWithName:@"Georgia-Bold" size:25.f];
        
        _autographLabel = [[UILabel alloc] init];
        [self addSubview:_autographLabel];
        [_autographLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_nameLabel.mas_bottom).offset(10);
        make.left.mas_equalTo(self->_picImageView.mas_right).offset(10);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(15);
        }];
        _autographLabel.text = @"我是全村最靓的一个靓仔";
        _autographLabel.textColor = [UIColor grayColor];
        //_autographLabel.font = [UIFont fontWithName:@"Beirut" size:5];
        _autographLabel.font = [UIFont systemFontOfSize:12];
        
        _letternumberLabel = [[UILabel alloc] init];
        [self addSubview:_letternumberLabel];
        [_letternumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self->_autographLabel.mas_bottom).offset(20);
            make.left.mas_equalTo(self->_picImageView.mas_right).offset(10);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(15);
        }];
        _letternumberLabel.text = @"漂流号 :709304";
        _letternumberLabel.textColor = [UIColor grayColor];
        _letternumberLabel.font = [UIFont systemFontOfSize:11];
        
        
        //信签
        _letterView = [[IIMIneFourView alloc] init];
        [self addSubview:_letterView];
        [_letterView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.picImageView.mas_bottom).offset(30);
            make.left.mas_equalTo(_picImageView);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(60);
        }];
        [_letterView setName:@"信签" :@"22"];
        
        //岛屿
        _islandView = [[IIMIneFourView alloc] init];
        [self addSubview:_islandView];
        [_islandView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.picImageView.mas_bottom).offset(30);
            make.left.mas_equalTo(_picImageView);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(60);
        }];
        [_islandView setName:@"信签" :@"22"];
        
        //岛屿
        _islandView = [[IIMIneFourView alloc] init];
        [self addSubview:_islandView];
        [_islandView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.picImageView.mas_bottom).offset(30);
            make.left.mas_equalTo(self->_letterView.mas_right).offset(15);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(60);
        }];
        [_islandView setName:@"岛屿" :@"10"];
        
        //收藏
        _collectView = [[IIMIneFourView alloc] init];
        [self addSubview:_collectView];
        [_collectView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.picImageView.mas_bottom).offset(30);
            make.left.mas_equalTo(self->_islandView.mas_right).offset(15);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(60);
        }];
        [_collectView setName:@"收藏" :@"9"];
        
        //创建岛屿
        _creatView = [[IIMIneFourView alloc] init];
        [self addSubview:_creatView];
        [_creatView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.picImageView.mas_bottom).offset(30);
            make.left.mas_equalTo(self->_collectView.mas_right).offset(15);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(60);
        }];
        [_creatView setName:@"创建岛屿" :@""];
        [_creatView.clickButton setImage:[UIImage imageNamed:@"jiahao.png"] forState:UIControlStateNormal];
        
        
        
    }
    return self;
}
@end
