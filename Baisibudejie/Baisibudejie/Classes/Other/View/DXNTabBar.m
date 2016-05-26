//
//  DXNTabBar.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNTabBar.h"

@interface DXNTabBar ()
/**发布按钮*/
@property (nonatomic,weak) UIButton * publishButton;

@end

@implementation DXNTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        //设置tabbar的背景
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];

        //设置发布按钮
        UIButton * publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:publishButton];
        self.publishButton = publishButton;
    }
    return self;
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    //设置发布按钮的frame
    self.publishButton.size = self.publishButton.currentBackgroundImage.size;
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    //设置其他按钮的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    NSInteger index = 0;
    for (UIView * button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        CGFloat buttonX = buttonW * ((index>1)?(index+1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW , buttonH);
        //增加索引
        index++;
    }
}

@end
