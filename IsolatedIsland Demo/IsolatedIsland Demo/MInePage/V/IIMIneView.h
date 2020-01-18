//
//  IIMIneView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIMIneView : UIView
@property (nonatomic, strong) UILabel * smallmineLabel;
@property (nonatomic, strong) UILabel * mineLabel;
@property (nonatomic, strong) UIImageView * picImageView;
@property (nonatomic, strong) UILabel * nameLabel;
@property (nonatomic, strong) UILabel * autographLabel;
@property (nonatomic, strong) UILabel * letternumberLabel;
@property (nonatomic, strong) UIButton * islandButton;
@property (nonatomic, strong) UIButton * collectionButton;
@property (nonatomic, strong)UIButton * creatIslandButton;
@property (nonatomic, strong)UILabel * mineIslandLabel;
@property (nonatomic, strong)UILabel * recentLabel;
@property (nonatomic, strong)UITableView * mineTableView;

@end

NS_ASSUME_NONNULL_END
