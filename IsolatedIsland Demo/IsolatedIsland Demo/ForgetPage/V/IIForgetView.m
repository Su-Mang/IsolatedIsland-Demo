//
//  IIForgetView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIForgetView.h"
#import <Masonry.h>
@implementation IIForgetView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        const CGFloat TextFieldfont = 14;
        const UIColor * mainColor = [UIColor colorWithRed:0.086 green:0.5019607 blue:0.4823 alpha:1];
        const UIColor * mainBackTextfieldColor = [UIColor colorWithRed:0.937254 green:0.937254 blue:0.937254 alpha:1];
        
              #pragma mark  返回上一层Button
            _backButton = [[UIButton alloc] init];
            [self addSubview:_backButton];
            [_backButton setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
            [self addSubview:_backButton];
            [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self).offset(45);
                make.left.mas_equalTo(self).offset(20);
                make.width.mas_equalTo(40);
                make.height.mas_equalTo(40);
            }];
        _forgetLabel = [[UILabel alloc] init];
        [self addSubview:_forgetLabel];
        _forgetLabel.text = @"忘记密码";
        _forgetLabel.textAlignment = NSTextAlignmentCenter;
        _forgetLabel.font = [UIFont systemFontOfSize:19];
        [_forgetLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(150);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_equalTo(60);
        }];
        
              #pragma mark 手机号输入框
            _telTextField = [[UITextField alloc] init];
            [self addSubview:_telTextField];
            [_telTextField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self->_forgetLabel.mas_bottom).offset(30);
                make.left.mas_equalTo(self).offset(60);
                make.right.mas_equalTo(self).offset(-60);
                make.height.mas_offset(50);
            }];
            _telTextField.placeholder = @"        输入手机号码";
            [_telTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
            _telTextField.font = [UIFont systemFontOfSize:TextFieldfont];
            _telTextField.backgroundColor = mainBackTextfieldColor;
            _telTextField.layer.cornerRadius = 10;
            
              #pragma mark 验证码输入框
            _verificationTextField = [[UITextField alloc] init];
            [self addSubview:_verificationTextField];
            [_verificationTextField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self->_telTextField.mas_bottom).offset(40);
                make.left.mas_equalTo(self).offset(60);
                make.right.mas_equalTo(self).offset(-60);
                make.height.mas_offset(50);
                
            }];
            _verificationTextField.placeholder = @"      请输入验证码";
            [_verificationTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
            _verificationTextField.font = [UIFont systemFontOfSize:TextFieldfont];
            _verificationTextField.backgroundColor = mainBackTextfieldColor;
            _verificationTextField.layer.cornerRadius = 10;
            
              #pragma mark 获取验证码
            _getverificationButton = [[UIButton alloc] initWithFrame:CGRectMake(260, 330, 94, 50)];
            [self addSubview:_getverificationButton];
            [_getverificationButton setTitle:@"获取验证码" forState:UIControlStateNormal];
            [_getverificationButton.titleLabel setFont:[UIFont systemFontOfSize:TextFieldfont]];
            [_getverificationButton setTitleColor:mainColor forState:UIControlStateNormal];
            [_getverificationButton setTitleColor:mainColor forState:UIControlStateSelected];
            
            
              #pragma mark 密码输入框
            _passwordTextField = [[UITextField alloc] init];
            [self addSubview:_passwordTextField];
            [_passwordTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
            _passwordTextField.secureTextEntry = YES;
            [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self->_verificationTextField.mas_bottom).offset(40);
                make.left.mas_equalTo(self).offset(60);
                make.right.mas_equalTo(self).offset(-60);
                make.height.mas_offset(50);
            }];
            _passwordTextField.placeholder = @"      请输入密码";
            _passwordTextField.font = [UIFont systemFontOfSize:TextFieldfont];
            _passwordTextField.backgroundColor = mainBackTextfieldColor;
            _passwordTextField.layer.cornerRadius = 10;
        
              #pragma mark 确认密码输入框
            _surePasswordTextField = [[UITextField alloc] init];
            [self addSubview:_surePasswordTextField];
            [_surePasswordTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
            _surePasswordTextField.secureTextEntry = YES;
            [_surePasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self->_passwordTextField.mas_bottom).offset(40);
                make.left.mas_equalTo(self).offset(60);
                make.right.mas_equalTo(self).offset(-60);
                make.height.mas_offset(50);
            }];
            _surePasswordTextField.placeholder = @"      请输入密码";
            _surePasswordTextField.font = [UIFont systemFontOfSize:TextFieldfont];
            _surePasswordTextField.backgroundColor = mainBackTextfieldColor;
            _surePasswordTextField.layer.cornerRadius = 10;
        
              #pragma mark 完成输入框
            _completeButton = [[UIButton alloc] init];
            [self addSubview:_completeButton];
            [_completeButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(self->_surePasswordTextField.mas_bottom).offset(70);
                make.left.mas_equalTo(self).offset(100);
                make.right.mas_equalTo(self).offset(-100);
                make.height.mas_offset(50);
            }];
            [_completeButton setTitle:@"  完成" forState:UIControlStateNormal];
            [_completeButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            _completeButton.layer.cornerRadius = 20.0;
            _completeButton.layer.borderColor = mainBackTextfieldColor.CGColor;//设置边框颜色
            _completeButton.layer.borderWidth = 1.0f;
            [_completeButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        
    }
    return self;
}

@end
