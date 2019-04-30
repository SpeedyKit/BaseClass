//
//  BaseCollectionViewFlowLayout.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseResueModel.h"

NS_ASSUME_NONNULL_BEGIN


@protocol BaseCVFlowLayoutDelegate <NSObject>

- (BaseResueModel *)flowLayout:(id)flowLayout reuseModelAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface BaseCollectionViewFlowLayout : UICollectionViewFlowLayout

@property(nonatomic, weak) id  <BaseCVFlowLayoutDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
