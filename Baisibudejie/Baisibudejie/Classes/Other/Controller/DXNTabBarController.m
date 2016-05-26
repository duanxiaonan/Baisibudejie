//
//  DXNTabBarController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNTabBarController.h"
#import "DXNEssenceController.h"
#import "DXNFriendTrendController.h"
#import "DXNMeController.h"
#import "DXNNewController.h"
#import "DXNTabBar.h"
#import "DXNNavigationController.h"

@interface DXNTabBarController ()

@end

@implementation DXNTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTabBarItemAttribute];
    //精华控制器
    [self addChildViewControllers:[[DXNEssenceController alloc]init] normalImage:[UIImage imageNamed:@"tabBar_essence_icon"] selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"] title:@"精华"];
    //新帖控制器
    [self addChildViewControllers:[[DXNNewController alloc]init] normalImage:[UIImage imageNamed:@"tabBar_new_icon"] selectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"] title:@"新帖"];
    //关注控制器
    [self addChildViewControllers:[[DXNFriendTrendController alloc]init] normalImage:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"] title:@"关注"];
    //我的控制器
    [self addChildViewControllers:[[DXNMeController alloc]init] normalImage:[UIImage imageNamed:@"tabBar_me_icon"] selectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"] title:@"我的"];

    //更换tabBar
    [self setValue:[[DXNTabBar alloc]init] forKeyPath:@"tabBar"];
}

/**设置所有item的属性*/
- (void)setTabBarItemAttribute{
    //未选中状态
    NSMutableDictionary * attribute = [NSMutableDictionary dictionary];
    attribute[NSForegroundColorAttributeName] = [UIColor grayColor];
    attribute[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    //选中状态
    NSMutableDictionary * selectAttribute = [NSMutableDictionary dictionary];
    selectAttribute[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    selectAttribute[NSFontAttributeName] = attribute[NSFontAttributeName];
    
    UITabBarItem * item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attribute forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectAttribute forState:UIControlStateSelected];
    
}

/**给标签栏控制器添加子控制器*/
- (void)addChildViewControllers:(UIViewController *)childController normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage title:(NSString *)title{
    
    childController.title = title;
    
    //未选中图片
    childController.tabBarItem.image = normalImage;
    //选中图片
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//防止被渲染
    childController.tabBarItem.selectedImage = selectedImage;
    
    //给标签栏控制器添加导航控制器为子控制器
    DXNNavigationController * nav = [[DXNNavigationController alloc]initWithRootViewController:childController];
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    [self addChildViewController:nav];
    
}

@end
