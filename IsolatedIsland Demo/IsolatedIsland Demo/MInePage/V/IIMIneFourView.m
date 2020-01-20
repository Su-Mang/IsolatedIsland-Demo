//
//  IIMIneFourView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/19.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMIneFourView.h"
#import <Masonry.h>
@implementation IIMIneFourView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _clickButton = [[UIButton alloc] init];
        [self addSubview:_clickButton];
        [_clickButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(5);
            make.left.mas_equalTo(self).offset(5);
            make.right.mas_equalTo(self).offset(-5);
            make.height.mas_equalTo(25);
        }];
        [_clickButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        _nameLabel = [[UILabel alloc]init];
        [self addSubview:_nameLabel];
        _nameLabel.textColor = [UIColor grayColor];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_clickButton.mas_bottom).offset(10);
            make.left.mas_equalTo(self).offset(5);
            make.right.mas_equalTo(self).offset(-5);
            make.height.mas_equalTo(10);
        }];
        self.backgroundColor = [UIColor colorWithRed:0.937254 green:0.937254 blue:0.937254 alpha:1];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        self.layer.cornerRadius = 10;
    }
    return self;
}
- (void)setName:(NSString *)nameLabel :(NSString *)clicknameButton {
    _nameLabel.text = nameLabel;
    _nameLabel.font = [UIFont systemFontOfSize:12];
    [_clickButton setTitle:clicknameButton forState:UIControlStateNormal];
    [_clickButton.titleLabel setFont:[UIFont fontWithName:@"Marker Felt" size:12]];
}


@end

