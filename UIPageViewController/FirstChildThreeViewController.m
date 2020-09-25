//
//  FirstChildThreeViewController.m
//  UIPageViewController
//
//  Created by 许明洋 on 2020/9/25.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "FirstChildThreeViewController.h"

@interface FirstChildThreeViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation FirstChildThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    self.label.center = self.view.center;
    [self.view addSubview:self.label];
}

- (UILabel *)label {
    if (_label) {
        return _label;
    }
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    _label.font = [UIFont systemFontOfSize:14];
    _label.textColor = [UIColor blackColor];
    _label.text = @"第一个界面的第三个子界面";
    _label.textAlignment = NSTextAlignmentCenter;
    return _label;
}

@end
