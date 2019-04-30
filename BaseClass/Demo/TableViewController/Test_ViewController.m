//
//  Test_ViewController.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_ViewController.h"
#import "Test_DataManager.h"
#import "Test_ReuseModel.h"
#import "Test_TableViewCell.h"


@interface Test_ViewController ()
<UITableViewDataSource,
UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) Test_DataManager *dataManager;

@end

@implementation Test_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.dataManager configReuseDataWithSource:nil];
    [self.tableView reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)initSubViews {
    [self.tableView registerNib:[UINib nibWithNibName:@"Test_TableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kBaseTVCellId];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Test_ReuseModel *model = self.dataManager.dataSource[indexPath.section][indexPath.row];
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:model.cellId];
    [cell updateUIWithModel:model];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataManager.dataSource[section].count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataManager.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.dataManager.dataSource[indexPath.section][indexPath.row].cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Test_ReuseModel *model = self.dataManager.dataSource[indexPath.section][indexPath.row];
    UIViewController *controller = [[NSClassFromString(model.pageName) alloc]init];
    controller.title = model.pageName;
    [self.navigationController pushViewController:controller animated:YES];
}

- (Test_DataManager *)dataManager {
    if (_dataManager == nil) {
        _dataManager = [Test_DataManager new];
    }
    return _dataManager;
}

@end
