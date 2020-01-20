//
//  IIMIneBounceView.m
//  IsolatedIsland Demo
//
//  Created by 岳靖翔 on 2020/1/20.
//  Copyright © 2020 岳靖翔. All rights reserved.
//

#import "IIMIneBounceView.h"
#import <Masonry.h>
#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define kDeviceHeight [UIScreen mainScreen].bounds.size.height
#define kZDIWebPageBounceViewHeight [UIScreen mainScreen].bounds.size.height / 2.5
@interface IIMIneBounceView()
@property (nonatomic, strong) UIView * contentView;
@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, strong) UIButton * fictitiousislandButton;
@property (nonatomic, strong)UIButton * entityIslandButton;
@property (nonatomic, strong)UILabel * fictitiousislandLabel;
@property (nonatomic, strong)UILabel * entityIslandLabel;
@property (nonatomic, strong)UIImageView * backimageView;
@property (nonatomic, strong) UIButton *cancelButton;
@end
@implementation IIMIneBounceView
- (void)setupContent {
    
    //alpha 0.0  白色   alpha 1 ：黑色   alpha 0～1 ：遮罩颜色，逐渐
    self.frame = [UIScreen mainScreen].bounds;
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
    
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(disMissView)]];
    
    if (_contentView == nil) {
        
        _contentView = [[UIView alloc]initWithFrame:CGRectMake(0, kDeviceHeight - kZDIWebPageBounceViewHeight, kDeviceWidth, kZDIWebPageBounceViewHeight)];
        _contentView.backgroundColor = [UIColor colorWithRed:0.91f green:0.91f blue:0.91f alpha:1.00f];
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor whiteColor];
        _contentView.layer.cornerRadius = 20;
        [self addSubview:_contentView];
//        [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.right.bottom.mas_equalTo(self);
//            make.height.mas_equalTo(300);
//        }];
        _titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_contentView).offset(20);
            make.left.mas_equalTo(160);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(20);
        }];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        NSMutableAttributedString * detailLabelstr = [[NSMutableAttributedString alloc] initWithString:@"  创建岛屿"];
        [detailLabelstr addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, 4)];//设置字体颜色
        [detailLabelstr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Arial" size:16] range:NSMakeRange(0, 4)];
        _titleLabel.attributedText = detailLabelstr;
     
        
        
       
        
        _fictitiousislandButton = [[UIButton alloc]init];
        [self.contentView addSubview:_fictitiousislandButton];
        [_fictitiousislandButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self->_titleLabel).offset(40);
            make.left.mas_equalTo(self->_contentView).offset(80);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
        [_fictitiousislandButton  setImage:[UIImage imageNamed:@"anzhuoduanliulanqidakai.png"] forState:UIControlStateNormal];
        
        _fictitiousislandLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_fictitiousislandLabel];
        [_fictitiousislandLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_fictitiousislandButton.mas_bottom);
            make.left.mas_equalTo(self->_contentView).offset(80);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(10);
        }];
        _fictitiousislandLabel.text = @"虚拟岛屿";
        _fictitiousislandLabel.textColor = [UIColor grayColor];
        _fictitiousislandLabel.font = [UIFont systemFontOfSize:12];
         _fictitiousislandLabel.textAlignment = NSTextAlignmentCenter;
        
        _entityIslandButton = [[UIButton alloc] init];
        [self.contentView addSubview:_entityIslandButton];
        [_entityIslandButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_titleLabel).offset(40);
        make.right.mas_equalTo(self->_contentView).offset(-80);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
        [_entityIslandButton setImage:[UIImage imageNamed:@"shantang-map-2.png"] forState:UIControlStateNormal];
        
        _entityIslandLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_entityIslandLabel];
        [_entityIslandLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_entityIslandButton.mas_bottom);
            make.right.mas_equalTo(self->_contentView).offset(-80);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(10);
        }];
        _entityIslandLabel.textAlignment = NSTextAlignmentCenter;
        _entityIslandLabel.textColor = [UIColor grayColor];
        _entityIslandLabel.font = [UIFont systemFontOfSize:12];
        _entityIslandLabel.text = @"实体岛屿";
        _backimageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_backimageView];
        [_backimageView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.mas_equalTo(self->_entityIslandLabel.mas_bottom).offset(30);
            make.left.mas_equalTo(20);
            make.right.mas_equalTo(-20);
            make.height.mas_equalTo(0.5);
        }];
        [_backimageView setImage:[UIImage imageNamed:@"8B240582-2C3F-41BA-937F-38B440174DAC.png"]];
        
        
        _cancelButton = [[UIButton alloc] init];
        [self.contentView addSubview:_cancelButton];
        [_cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self->_entityIslandLabel.mas_bottom).offset(40);
            make.left.mas_equalTo(150);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(20);
        }];
        [_cancelButton setTitle:@"取 消" forState:UIControlStateNormal];
        _cancelButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_cancelButton setTitleColor:[UIColor colorWithRed:0.62f green:0.62f blue:0.62f alpha:1.00f] forState:UIControlStateNormal];
        [_cancelButton setBackgroundColor:[UIColor whiteColor]];
        
        [_cancelButton addTarget:self action:@selector(disMissView) forControlEvents:UIControlEventTouchUpInside];
    }
}
- (void)disMissView {
    
    [_contentView setFrame:CGRectMake(0, kDeviceHeight - kZDIWebPageBounceViewHeight, kDeviceWidth, kZDIWebPageBounceViewHeight)];
    [UIView animateWithDuration:0.15
                     animations:^{
                         
                         self.alpha = 0.0;
                         
                         [self.contentView setFrame:CGRectMake(0, kDeviceHeight, kDeviceWidth, kZDIWebPageBounceViewHeight)];
                     }
                     completion:^(BOOL finished){
                         
                         [self removeFromSuperview];
                         [self.contentView removeFromSuperview];
                     }];
 
}
- (void)showInView:(UIView *)view  {
    if (!view) {
        return;
    }
    [self setupContent];
    
    [view addSubview:self];
    [view addSubview:_contentView];
    
    [_contentView setFrame:CGRectMake(0, kDeviceHeight, kDeviceWidth, kZDIWebPageBounceViewHeight)];
    
    [UIView animateWithDuration:0.15 animations:^{
        
        self.alpha = 1.0;
        
        [self.contentView setFrame:CGRectMake(0, kDeviceHeight - kZDIWebPageBounceViewHeight, kDeviceWidth, kZDIWebPageBounceViewHeight)];
        
    } completion:nil];
    
}


@end
