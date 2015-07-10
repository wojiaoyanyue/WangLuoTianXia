//
//  HeadLineCell.m
//  WangLuoTianXia_App
//
//  Created by lanou3g on 15/7/9.
//  Copyright (c) 2015年 文艺范儿. All rights reserved.
//

#import "HeadLineCell.h"

@implementation HeadLineCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        
        self.MyHeadLineLabelTitle = [[UILabel  alloc] initWithFrame:CGRectMake(130, 15, 300, 50)];
        [self addSubview:_MyHeadLineLabelTitle];
        
        self.MyHeadLineLabelIntro = [[UILabel alloc] initWithFrame:CGRectMake(130, 40, 300, 50)];
        [self addSubview:_MyHeadLineLabelIntro];
        
        self.MyHeadLineLabelNum = [[UILabel alloc] initWithFrame:CGRectMake(300, 60, 50, 50)];
        _MyHeadLineLabelNum.font = [UIFont fontWithName:@"Helvetica" size:11];
        [self addSubview:_MyHeadLineLabelNum];
        
        self.MyHeadLineLableFollow = [[UILabel alloc] initWithFrame:CGRectMake(320, 60, 50, 50)];
        _MyHeadLineLableFollow.font = [UIFont fontWithName:@"Helvetica" size:11];
        [self addSubview:_MyHeadLineLableFollow];
        
        self.MyHeadLineImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"warning"]];
        self.MyHeadLineImageView.frame = CGRectMake(5, 10, 120, 80);
        [self addSubview:_MyHeadLineImageView];
        
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
