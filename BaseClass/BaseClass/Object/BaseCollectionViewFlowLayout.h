//
//  BaseCollectionViewFlowLayout.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCollectionViewFlowLayoutProtocol.h"


NS_ASSUME_NONNULL_BEGIN



@interface BaseCollectionViewFlowLayout : UICollectionViewFlowLayout

@property(nonatomic, weak) id  <BaseCollectionViewFlowLayoutProtocol> delegate;

@end

NS_ASSUME_NONNULL_END
