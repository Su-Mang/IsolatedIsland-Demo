//
//  IIMessageVIew.h
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/21.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIMessageVIew : UIView
@property (nonatomic, strong) UILabel * smallMessageLabel;
@property (nonatomic, strong) UILabel * messageLabel;
@property (nonatomic, strong) UIButton * addFriendButton;
@property (nonatomic, strong) UITableView * groupTableview;
@property NSMutableArray * groupMutableArry;
-(void)addGroupMUtable:(NSString *)picStr:(NSString *)nameStr:(NSString *)deatilStr:(NSString *) timeStr;
@end
NS_ASSUME_NONNULL_END
