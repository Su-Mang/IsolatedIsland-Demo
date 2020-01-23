//
//  IIGroupMessageTableViewCell.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/23.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIGroupMessageTableViewCell.h"
#import <Masonry.h>
@implementation IIGroupMessageTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _picImageView = [[UIImageView alloc] init];
        [self addSubview:_picImageView];
        
        _detailLabel = [[UILabel alloc] init];
        [self addSubview:_detailLabel];
        _detailLabel.textColor = [UIColor grayColor];
        _detailLabel.font = [UIFont systemFontOfSize:12];
        
        _timeLabel = [[UILabel alloc] init];
        [self addSubview:_timeLabel];
         _timeLabel.textColor = [UIColor grayColor];
        _timeLabel.font = [UIFont systemFontOfSize:10];
        
        _titleLabel = [[UILabel alloc] init];
        [self addSubview:_titleLabel];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [_picImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(10);
        make.left.mas_equalTo(self).offset(20);
        make.width.mas_equalTo(35);
        make.height.mas_equalTo(35);
    }];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(10);
        make.left.mas_equalTo(self->_picImageView.mas_right).offset(20);
        make.width.mas_equalTo(210);
        make.height.mas_equalTo(20);
    }];
    [_detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self).offset(-20);
        make.left.mas_equalTo(self->_picImageView.mas_right).offset(20);
        make.width.mas_equalTo(210);
        make.height.mas_equalTo(20);
    }];
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(10);
        make.right.mas_equalTo(self).offset(-10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    
}

@end
