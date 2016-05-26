//
//  DXNMeController.m
//  Baisibudejie
//
//  Created by ma c on 16/5/25.
//  Copyright © 2016年 DuanXN. All rights reserved.
//

#import "DXNMeController.h"

@interface DXNMeController ()

@end

@implementation DXNMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置背景色
    self.view.backgroundColor = DXNRGBColor(223, 223, 223, 1.0);
    self.navigationItem.rightBarButtonItems = @[
                                                [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self section:@selector(doClick)],
                                                [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self section:@selector(moonClick)]
                                                ];

}

- (void)doClick{
    DXNFun;
}
- (void)moonClick{
    DXNFun;
}

@end
