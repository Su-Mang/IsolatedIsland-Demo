//
//  IIMessagecellView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/23.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMessagecellView.h"
#import <Masonry.h>
@implementation IIMessagecellView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _picimageView = [[UIImageView alloc]init];
        [self addSubview:_picimageView];
        [_picimageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(25);
            make.left.mas_equalTo(self).offset(20);
            make.width.height.mas_equalTo(15);
        }];
        
        _nameLabel = [[UILabel alloc] init];
        [self addSubview:_nameLabel];
        _nameLabel.font = [UIFont systemFontOfSize:12];
        _nameLabel.textColor = [UIColor grayColor];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(10);
            make.left.mas_equalTo(self->_picimageView.mas_right).offset(20);
            make.height.mas_equalTo(50);
            make.width.mas_equalTo(100);
        }];
        
        _clickButton = [[UIButton alloc] init];
        [self addSubview:_clickButton];
        [_clickButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.right.left.bottom.mas_equalTo(self);
        }];

        
    }
    return self;
}

@end
