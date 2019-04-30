//
//  BaseReuseDataManager.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseReuseDataManager.h"

@implementation BaseReuseDataManager

- (void)configReuseDataWithSource:(id)source {
    
}

- (NSMutableArray<NSArray<BaseResueModel *> *> *)reuseDataSource {
    if (_reuseDataSource == nil) {
        _reuseDataSource = [NSMutableArray new];
    }
    return _reuseDataSource;
}

@end
