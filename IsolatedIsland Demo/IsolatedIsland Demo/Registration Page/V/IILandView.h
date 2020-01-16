//
//  IILandView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/16.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IILandView : UIView
@property(nonatomic, strong)UIButton * LandButton;
@property(nonatomic, strong)UIButton * registrationButton;
@property(nonatomic, strong)UIButton * spotButton;
@property(nonatomic, strong)UITextField * telTextField;
@property(nonatomic, strong)UITextField * verificationTextField;
@property(nonatomic, strong)UITextField * passwordTextField;
@property(nonatomic, strong)UIButton * nextButton;
@property(nonatomic, strong)UIButton * getverificationButton;
@property(nonatomic,strong)UIButton *  visibleButton;
@property(nonatomic,strong)UILabel * detaillabel;
@property(nonatomic,strong)UIButton * backbutton;
@end

NS_ASSUME_NONNULL_END
