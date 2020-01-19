//
//  IIMIneFourView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/19.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIMIneFourView : UIView
@property (nonatomic, strong) UILabel * nameLabel;
@property (nonatomic, strong) UIButton * clickButton;
-(void) setName :(NSString *)nameLabel:(NSString *)clicknameButton;
@end

NS_ASSUME_NONNULL_END
