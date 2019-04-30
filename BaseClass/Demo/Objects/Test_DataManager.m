//
//  Test_DataManager.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_DataManager.h"

@implementation Test_DataManager

- (void)configReuseDataWithSource:(id)source {
    NSArray *pageName = @[@"Test_ViewController",@"Test_CollectionViewController"];
    if (source) {
        [self configCollectionViewDataSource:pageName];
    } else {
        [self configTableViewDataSource:pageName];
    }
}

- (void)configTableViewDataSource:(NSArray<NSString *>*)pageName {
    NSMutableArray <Test_ReuseModel *>*models = [NSMutableArray new];
    for (NSString *name in pageName) {
        [models addObject:[self createReuseModelWithPageName:name itemSize:CGSizeZero cellHeight:45 cellId:kBaseTVCellId]];
    }
    [self.dataSource addObject:models];
}

- (void)configCollectionViewDataSource:(NSArray<NSString *>*)pageName {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    NSMutableArray <Test_ReuseModel *>*models = [NSMutableArray new];
    for (NSString *name in pageName) {
        [models addObject:[self createReuseModelWithPageName:name itemSize:CGSizeMake(screenWidth / 5, 75) cellHeight:0 cellId:kBaseCVCellId]];
    }
    [self.dataSource addObject:models];
}

- (Test_ReuseModel *)createReuseModelWithPageName:(NSString *)pageName
                                         itemSize:(CGSize)itemSize
                                       cellHeight:(CGFloat)cellHeight
                                           cellId:(NSString *)cellId {
    Test_ReuseModel *model = [Test_ReuseModel new];
    model.pageName = pageName;
    model.cellHeight = cellHeight;
    model.itemSize = itemSize;
    model.cellId = cellId;
    return model;
}

- (NSMutableArray<NSArray<Test_ReuseModel *> *> *)dataSource {
    if (_dataSource == nil) {
        _dataSource = [NSMutableArray new];
    }
    return _dataSource;
}

@end
