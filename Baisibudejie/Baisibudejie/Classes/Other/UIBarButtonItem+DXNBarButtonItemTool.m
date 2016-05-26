//
//  UIBarButtonItem+DXNBarButtonItemTool.m
//  Baisibudejie
//
//  Created by ma c on 16/5/26.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "UIBarButtonItem+DXNBarButtonItemTool.h"

@implementation UIBarButtonItem (DXNBarButtonItemTool)

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target section:(SEL)section{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:section forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}

@end
