//
//  Test_ReuseModel.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseResueModel.h"
NS_ASSUME_NONNULL_BEGIN
static NSString * const kBaseTVCellId = @"kBaseTVCellId";

static NSString * const kBaseCVCellId = @"kBaseCVCellId";
@interface Test_ReuseModel : BaseResueModel

@property(nonatomic, copy) NSString *pageName;


@end

NS_ASSUME_NONNULL_END
