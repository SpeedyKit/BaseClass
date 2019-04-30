//
//  Test_CollectionViewController.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_CollectionViewController.h"
#import "Test_CollectionViewCell.h"
#import "Test_CVFlowLayout.h"
#import "Test_DataManager.h"
@interface Test_CollectionViewController ()
<BaseCVFlowLayoutDelegate,
UICollectionViewDelegate,
UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet Test_CVFlowLayout *flowLayout;
@property(nonatomic, strong) Test_DataManager *dataManager;
@end

@implementation Test_CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.dataManager configReuseDataWithSource:[NSString new]];
    [self.collectionView reloadData];

}

- (void)initSubViews {
    [self.collectionView registerNib:[UINib nibWithNibName:@"Test_CollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:kBaseCVCellId];
    self.flowLayout.delegate = self;
}

- (BaseResueModel *)flowLayout:(id)flowLayout reuseModelAtIndexPath:(NSIndexPath *)indexPath {
    return self.dataManager.dataSource[indexPath.section][indexPath.row];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Test_ReuseModel *model = self.dataManager.dataSource[indexPath.section][indexPath.row];
    BaseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:model.cellId forIndexPath:indexPath];
    [cell updateUIWithModel:model];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataManager.dataSource[section].count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.dataManager.dataSource.count;
}

- (BaseResueModel *)flowlayout:(id)flowlayout reuseModelAtIndexPath:(NSIndexPath *)indexPath {
    return self.dataManager.dataSource[indexPath.section][indexPath.row];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Test_ReuseModel *model = self.dataManager.dataSource[indexPath.section][indexPath.row];
    UIViewController *controller = [[NSClassFromString(model.pageName) alloc]init];
    controller.title = model.pageName;
    [self.navigationController pushViewController:controller animated:YES];
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


- (Test_DataManager *)dataManager {
    if (_dataManager == nil) {
        _dataManager = [Test_DataManager new];
    }
    return _dataManager;
}


@end
