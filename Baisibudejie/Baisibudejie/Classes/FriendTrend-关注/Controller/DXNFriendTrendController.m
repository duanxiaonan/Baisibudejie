//
//  DXNFriendTrendController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNFriendTrendController.h"

@interface DXNFriendTrendController ()

@end

@implementation DXNFriendTrendController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航标题
    self.navigationItem.title = @"我的关注";
    //设置左按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self section:@selector(friendClick)];
    //设置背景色
    self.view.backgroundColor = DXNRGBColor(223, 223, 223, 1.0);
}

- (void)friendClick{
    DXNFun;
}

@end
