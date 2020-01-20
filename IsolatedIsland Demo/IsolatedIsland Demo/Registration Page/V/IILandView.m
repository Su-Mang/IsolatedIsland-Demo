//
//  IILandView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/16.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IILandView.h"
#import <Masonry.h>
@implementation IILandView

- (instancetype)initWithFrame:(CGRect)frame
{
    const CGFloat TextFieldfont = 14;
    const UIColor * mainColor = [UIColor colorWithRed:0.086 green:0.5019607 blue:0.4823 alpha:1];
    const UIColor * mainBackTextfieldColor = [UIColor colorWithRed:0.937254 green:0.937254 blue:0.937254 alpha:1];
    self = [super initWithFrame:frame];
    if (self) {
        #pragma mark 返回上一层Button
        _backbutton = [[UIButton alloc] init];
        [self addSubview:_backbutton];
        [_backbutton setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
        [self addSubview:_backbutton];
        [_backbutton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(45);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(40);
            make.height.mas_equalTo(40);
        }];
        
          #pragma mark 手机注册Button
        _registrationButton = [[UIButton alloc] init];
        [self addSubview:_registrationButton];
        [_registrationButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_backbutton.mas_bottom).offset(70);
            make.left.mas_equalTo(self->_backbutton.mas_right);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(50);
        }];
        [_registrationButton setTitle:@"手机注册" forState:UIControlStateNormal];
        [_registrationButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _registrationButton.titleLabel.font = [UIFont systemFontOfSize:19];
      
        
        
          #pragma mark 登录Button
        _landButton = [[UIButton alloc]init];
        [self addSubview:_landButton];
        [_landButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_registrationButton);
            make.left.mas_equalTo(self->_registrationButton.mas_right).offset(20);
            make.width.height.mas_equalTo(self->_registrationButton);
        }];
         [_landButton setTitle:@"现在登陆" forState:UIControlStateNormal];
        _landButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [_landButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    
          #pragma mark 点图片
        _spotButton = [[UIButton alloc] init];
        [self addSubview:_spotButton];

        [_spotButton setImage:[UIImage imageNamed:@"spot.png"] forState: UIControlStateNormal];
        [_spotButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_registrationButton.mas_bottom).offset(10); make.left.mas_equalTo(self->_registrationButton).mas_offset(20);
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
        _getverificationButton = [[UIButton alloc] initWithFrame:CGRectMake(260, 365, 94, 50)];
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
        
        _visibleButton = [[UIButton alloc] initWithFrame:CGRectMake(260, 455, 94, 50)];
        [self addSubview:_visibleButton];
        [_visibleButton setImage:[UIImage imageNamed:@"htmal5icon08-2.png"] forState:UIControlStateNormal];
        [_visibleButton setImage:[UIImage imageNamed:@"mimakejian.png"] forState:UIControlStateSelected];
        
          #pragma mark 下一步输入框
        _nextButton = [[UIButton alloc] init];
        [self addSubview:_nextButton];
        [_nextButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_passwordTextField.mas_bottom).offset(70);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_offset(50);
        }];
        [_nextButton setTitle:@"  下一步" forState:UIControlStateNormal];
        [_nextButton setTitleColor:[UIColor colorWithRed:0.7647 green:0.7647 blue:0.7647 alpha:1] forState:UIControlStateNormal];
        _nextButton.layer.cornerRadius = 20.0;
        _nextButton.layer.borderColor = mainBackTextfieldColor.CGColor;//设置边框颜色
        _nextButton.layer.borderWidth = 1.0f;
        
        
        
          #pragma mark 细节输入框
        _detaillabel = [[UILabel alloc] init];
        [self addSubview:_detaillabel];
        [_detaillabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(self).offset(-30);
            make.left.mas_equalTo(self).offset(70);
            make.right.mas_equalTo(self).offset(-70);
            make.height.mas_offset(10);
        }];
        _detaillabel.font = [UIFont systemFontOfSize:10];
        NSMutableAttributedString * detailLabelstr = [[NSMutableAttributedString alloc] initWithString:@"     注册/登陆 表示同意用户协议|隐私条款"];
        _detaillabel.textAlignment = NSTextAlignmentCenter;
    
        [detailLabelstr addAttribute:NSForegroundColorAttributeName value:mainColor range:NSMakeRange(15, 9)];//设置字体颜色
        [detailLabelstr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Arial" size:12] range:NSMakeRange(0, 24)]; //设置字体字号和字体类别
        _detaillabel.attributedText = detailLabelstr;
     
        
    }
    return self;
}


@end
