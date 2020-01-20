//
//  IIMIneTableViewCell.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/20.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMIneTableViewCell.h"
#import <Masonry.h>
@implementation IIMIneTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _picImageView = [[UIImageView alloc] init];
        [self addSubview:_picImageView];
        
        _nameLabel = [[UILabel alloc] init];
        [self addSubview:_nameLabel];
        [_nameLabel setTextColor:[UIColor grayColor]];
        [_nameLabel setFont:[UIFont systemFontOfSize:12]];
        
        _borderImageView = [[UIImageView alloc] init];
        [self addSubview:_borderImageView];
        [_borderImageView setImage:[UIImage imageNamed:@"zhankai-4.png"]];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    [_picImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(5);
        make.left.mas_equalTo(self).offset(15);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(5);
        make.left.mas_equalTo(self->_picImageView.mas_right).offset(15);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(20);
    }];
    
    [_borderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(5);
        make.right.mas_equalTo(self).offset(-15);
        make.width.mas_equalTo(10);
        make.height.mas_equalTo(10);
    }];
    
    
    
}
@end
