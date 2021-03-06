//
//  Main2ViewController.m
//  UIPageViewController
//
//  Created by 许明洋 on 2020/6/12.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Main2ViewController.h"
#import "XMYTabView.h"
#import "Masonry.h"

@interface Main2ViewController ()

@property (nonatomic, strong) XMYTabView *tabView;

@end

@implementation Main2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主界面";
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tabView];
    [self.tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.view);
        make.height.equalTo(@41);
    }];
    
}

- (XMYTabView *)tabView {
    if (_tabView) {
        return _tabView;
    }
    _tabView = [[XMYTabView alloc] init];
    _tabView.titles = [NSArray arrayWithObjects:@"第一个tab",@"第二个tab",@"第三个tab",@"第四个tab",@"第五个tab",@"第六个tab",@"第七个tab",@"第八个tab",@"第九个tab",@"第十个tab",nil];
//    _tabView.titles = [NSArray arrayWithObjects:@"第一个tab",@"第二个tab",@"第三个tab",nil];
    [_tabView selectIndex:0];
    return _tabView;
}


@end
