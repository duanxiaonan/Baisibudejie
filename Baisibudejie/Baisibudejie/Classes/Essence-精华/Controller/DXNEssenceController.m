//
//  DXNEssenceController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNEssenceController.h"

@interface DXNEssenceController ()

@end

@implementation DXNEssenceController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //设置导航栏左侧按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self section:@selector(tagClick)];
    //设置背景色
    self.view.backgroundColor = DXNRGBColor(223, 223, 223, 1.0);
}

- (void)tagClick{

    [self.navigationController pushViewController:[[UIViewController alloc]init] animated:YES];
}

@end
