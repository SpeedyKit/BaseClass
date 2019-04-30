//
//  Test_DataManager.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseDataManager.h"
#import "Test_ReuseModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface Test_DataManager : BaseDataManager

@property(nonatomic, strong) NSMutableArray <NSArray <Test_ReuseModel *>*>*dataSource;

- (void)configReuseDataWithSource:(_Nullable id)source;

@end

NS_ASSUME_NONNULL_END
