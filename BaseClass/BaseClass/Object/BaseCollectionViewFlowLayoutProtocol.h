//
//  BaseCollectionViewFlowLayoutProtocol.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

@class BaseResueModel;

@protocol BaseCollectionViewFlowLayoutProtocol <NSObject>

- (BaseResueModel *)flowLayout:(id)flowLayout reuseModelAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
