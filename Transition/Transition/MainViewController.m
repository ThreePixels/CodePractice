//
//  ViewController.m
//  Transition
//
//  Created by 刘长虹 on 2017/12/20.
//  Copyright © 2017年 刘长虹. All rights reserved.
//

#import "MainViewController.h"
#import "SDAutolayout.h"

#define MENU_TABLEVIEW_REUSE_IDENTIFIER @"menuTableViewReuseIdentifier"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *menuTableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createSubviews];
    [self createLayout];
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

- (void)createLayout {
    self.menuTableView.sd_layout
    .leftSpaceToView(self.view, 0)
    .rightSpaceToView(self.view, 0)
    .topSpaceToView(self.view, 44)
    .bottomSpaceToView(self.view, 0);
}

#pragma mark - publicMethod



#pragma mark - PrivateMethod



#pragma mark - request



#pragma mark - EventClick



#pragma mark - set/get

- (UITableView *)menuTableView {
    if (!_menuTableView) {
        _menuTableView = [[UITableView alloc] init];
        _menuTableView.delegate = self;
        _menuTableView.dataSource = self;
        [_menuTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MENU_TABLEVIEW_REUSE_IDENTIFIER];
        _menuTableView.tableFooterView = [UIView new];
    }
    return _menuTableView;
}

#pragma mark - delegate

#pragma mark -- TableView Delegate

#pragma mark -tableView delegate & datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 44;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MENU_TABLEVIEW_REUSE_IDENTIFIER forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - others

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
