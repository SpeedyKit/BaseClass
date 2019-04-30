//
//  BaseDataManager.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseResueModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseDataManager : NSObject

@property(nonatomic, strong) NSMutableArray <NSArray <BaseResueModel *>*>*dataSource;

@end

NS_ASSUME_NONNULL_END
