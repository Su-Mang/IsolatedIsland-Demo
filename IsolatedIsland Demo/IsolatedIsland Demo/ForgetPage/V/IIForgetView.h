//
//  IIForgetView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIForgetView : UIView
@property (nonatomic,strong) UILabel * forgetLabel;
@property (nonatomic, strong) UITextField * telTextField;
@property (nonatomic, strong) UITextField * verificationTextField;
@property (nonatomic, strong) UIButton * getverificationButton;
@property (nonatomic, strong) UITextField * passwordTextField;
@property (nonatomic, strong) UITextField * surePasswordTextField;
@property (nonatomic, strong) UIButton * completeButton;
@property (nonatomic, strong) UIButton * backButton;
@end

NS_ASSUME_NONNULL_END
