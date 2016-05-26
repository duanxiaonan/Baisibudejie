//
//  DXNNavigationController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/26.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNNavigationController.h"

@interface DXNNavigationController ()

@end

@implementation DXNNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**这个方法可以拦截所有push进来的控制器*/
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
 
    if (self.childViewControllers.count > 0) {//如果不是第一个子控制器
        
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [button sizeToFit];
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        //让按钮内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        viewController.hidesBottomBarWhenPushed = YES;
    }

    [super pushViewController:viewController animated:animated];

}

- (void)back{
    [self popViewControllerAnimated:YES];
}

@end
