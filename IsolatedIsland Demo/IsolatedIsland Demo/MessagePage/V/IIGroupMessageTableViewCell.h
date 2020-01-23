//
//  IIGroupMessageTableViewCell.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/23.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIGroupMessageTableViewCell : UITableViewCell
@property (nonatomic, strong)UIImageView * picImageView;
@property (nonatomic, strong)UILabel * titleLabel;
@property (nonatomic, strong)UILabel * detailLabel;
@property (nonatomic, strong)UILabel * timeLabel;
@end

NS_ASSUME_NONNULL_END
