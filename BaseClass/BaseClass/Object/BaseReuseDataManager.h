//
//  BaseReuseDataManager.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseDataManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseReuseDataManager : BaseDataManager

//@property(nonatomic, strong) NSMutableArray <NSArray <BaseResueModel *>*>*reuseDataSource;

- (void)configReuseDataWithSource:(id)source;

@end

NS_ASSUME_NONNULL_END
