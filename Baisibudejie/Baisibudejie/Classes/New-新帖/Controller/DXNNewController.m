//
//  DXNNewController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNNewController.h"

@interface DXNNewController ()

@end

@implementation DXNNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左侧按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self section:@selector(newClick)];
    //设置背景色
    self.view.backgroundColor = DXNRGBColor(223, 223, 223, 1.0);
}

- (void)newClick{

    DXNFun;
}

@end
