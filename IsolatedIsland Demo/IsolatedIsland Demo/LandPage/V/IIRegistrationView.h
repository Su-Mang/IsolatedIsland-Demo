//
//  IIRegistrationView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIRegistrationView : UIView
@property(nonatomic, strong)UIButton * backButton;
@property(nonatomic, strong)UIButton * landButton;
@property(nonatomic, strong)UIButton * spotButton;
@property(nonatomic, strong)UITextField * telTextField;
@property(nonatomic, strong)UITextField * passwordTextField;
@property(nonatomic, strong)UIButton * completeButton;
@property(nonatomic,strong)UILabel * detailLabel;
@property(nonatomic,strong)UIButton * forgetPasswordButton;
@end

NS_ASSUME_NONNULL_END
