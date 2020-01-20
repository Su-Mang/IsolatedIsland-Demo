//
//  IIRegistrationView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIRegistrationView.h"
#import <Masonry.h>
@implementation IIRegistrationView


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
        
          #pragma mark 登录Button
        _landButton = [[UIButton alloc]init];
        [self addSubview:_landButton];
        [_landButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_backButton.mas_bottom).offset(70);
            make.left.mas_equalTo(self->_backButton.mas_right);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(50);
        }];
        [_landButton setTitle:@"现在登陆" forState:UIControlStateNormal];
        _landButton.titleLabel.font = [UIFont systemFontOfSize:19];
        [_landButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        
          #pragma mark 点图片
        _spotButton = [[UIButton alloc] init];
        [self addSubview:_spotButton];
        
        [_spotButton setImage:[UIImage imageNamed:@"landSpot.png"] forState: UIControlStateNormal];
        [_spotButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_landButton.mas_bottom).offset(10); make.left.mas_equalTo(self->_landButton).mas_offset(20);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(20);
        }];
        
          #pragma mark 手机号输入框
        _telTextField = [[UITextField alloc] init];
        [self addSubview:_telTextField];
        [_telTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self->_landButton.mas_bottom).offset(70);
            make.left.mas_equalTo(self).offset(60);
            make.right.mas_equalTo(self).offset(-60);
            make.height.mas_offset(50);
        }];
        _telTextField.placeholder = @"        输入手机号码";
        [_telTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
        _telTextField.font = [UIFont systemFontOfSize:TextFieldfont];
        _telTextField.backgroundColor = mainBackTextfieldColor;
        _telTextField.layer.cornerRadius = 10;

          #pragma mark 密码输入框
        _passwordTextField = [[UITextField alloc] init];
        [self addSubview:_passwordTextField];
        [_passwordTextField setValue:[NSNumber numberWithInt:20] forKey:@"paddingLeft"];
        _passwordTextField.secureTextEntry = YES;
        [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_telTextField.mas_bottom).offset(40);
            make.left.mas_equalTo(self).offset(60);
            make.right.mas_equalTo(self).offset(-60);
            make.height.mas_offset(50);
        }];
        _passwordTextField.placeholder = @"      请输入密码";
        _passwordTextField.font = [UIFont systemFontOfSize:TextFieldfont];
        _passwordTextField.backgroundColor = mainBackTextfieldColor;
        _passwordTextField.layer.cornerRadius = 10;
        
        //忘记密码Button
        _forgetPasswordButton = [[UIButton alloc] initWithFrame:CGRectMake(260, 365, 94, 50)];
        [self addSubview:_forgetPasswordButton];
        [_forgetPasswordButton setTitle:@"忘记密码" forState:UIControlStateNormal];
        [_forgetPasswordButton.titleLabel setFont:[UIFont systemFontOfSize:TextFieldfont]];
        [_forgetPasswordButton setTitleColor:mainColor forState:UIControlStateNormal];
       
          #pragma mark 完成输入框
        _completeButton = [[UIButton alloc] init];
        [self addSubview:_completeButton];
        [_completeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_passwordTextField.mas_bottom).offset(70);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_offset(50);
        }];
        [_completeButton setTitle:@"  登陆" forState:UIControlStateNormal];
        [_completeButton setTitleColor:[UIColor colorWithRed:0.7647 green:0.7647 blue:0.7647 alpha:1] forState:UIControlStateNormal];
        _completeButton.layer.cornerRadius = 20.0;
        _completeButton.layer.borderColor = mainBackTextfieldColor.CGColor;//设置边框颜色
        _completeButton.layer.borderWidth = 1.0f;
        
        
        
         #pragma mark 细节输入框
        _detailLabel = [[UILabel alloc] init];
        [self addSubview:_detailLabel];
        [_detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(self).offset(-30);
            make.left.mas_equalTo(self).offset(70);
            make.right.mas_equalTo(self).offset(-70);
            make.height.mas_offset(10);
        }];
        _detailLabel.font = [UIFont systemFontOfSize:10];
        NSMutableAttributedString * detailLabelstr = [[NSMutableAttributedString alloc] initWithString:@"     注册/登陆 表示同意用户协议|隐私条款"];
        _detailLabel.textAlignment = NSTextAlignmentCenter;
        
        [detailLabelstr addAttribute:NSForegroundColorAttributeName value:mainColor range:NSMakeRange(15, 9)];//设置字体颜色
        [detailLabelstr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Arial" size:12] range:NSMakeRange(0, 24)]; //设置字体字号和字体类别
        _detailLabel.attributedText = detailLabelstr;
      
        
        
    }
    return self;
}

@end
