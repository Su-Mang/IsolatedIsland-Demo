//
//  IIMIneView.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/18.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class IIMIneFourView;
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
@property (nonatomic, strong)IIMIneFourView * letterView;
@property (nonatomic, strong)IIMIneFourView * islandView;
@property (nonatomic, strong)IIMIneFourView * collectView;
@property (nonatomic, strong)IIMIneFourView * creatView;
@property NSArray * tableviewDataArry;
-(void) setRecntLabelNumber :(NSInteger)  recentNumber;
@end

NS_ASSUME_NONNULL_END
