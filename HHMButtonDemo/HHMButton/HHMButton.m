//
//  HHMButton.m
//  HHMButtonDemo
//
//  Created by Hehuimin on 2017/9/6.
//  Copyright © 2017年 haoshiqi. All rights reserved.
//

#import "HHMButton.h"

@implementation HHMButton

// xib
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setupUI];
}

// 纯代码
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect rect = [super imageRectForContentRect:contentRect];
    rect.origin.x = (CGRectGetWidth(contentRect)  - CGRectGetWidth(rect)) / 2.0;
    rect.origin.y = CGRectGetHeight(contentRect) * 0.2;
    
    return rect;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect rect = [super titleRectForContentRect:contentRect];
    //设置为0里要设置button的titleLabel.textAlignment为NSTextAlignmentCenter
    rect.origin.x = 0;
    rect.origin.y = CGRectGetMaxY([self imageRectForContentRect:contentRect]) + 5;
    rect.size.width = CGRectGetWidth(contentRect);
    
    return rect;
}

@end
