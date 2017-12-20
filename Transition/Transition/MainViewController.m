//
//  ViewController.m
//  Transition
//
//  Created by 刘长虹 on 2017/12/20.
//  Copyright © 2017年 刘长虹. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UITableView *menuTableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createSubviews];
    
}

#pragma mark - 生命周期



#pragma mark - 全局数据初始化

- (void)initOptions {
    
}

- (void)dataInit {
    
}

#pragma mark - 子界面创建

- (void)createSubviews {
    
    [self.view addSubview:self.menuTableView];
    
}

#pragma mark - publicMethod



#pragma mark - PrivateMethod



#pragma mark - request



#pragma mark - EventClick



#pragma mark - set/get

- (UITableView *)menuTableView {
    if (!_menuTableView) {
        _menuTableView
    }
}

#pragma mark - delegate



#pragma mark - others

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
