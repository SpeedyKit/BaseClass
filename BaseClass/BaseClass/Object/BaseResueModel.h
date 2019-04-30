//
//  BaseResueModel.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseResueModel : NSObject

// cell的注册Id
@property(nonatomic, copy  ) NSString   *cellId;

// tableview cell 专用
@property(nonatomic, assign) CGFloat    cellHeight;

// collectionview cell 专用
@property(nonatomic, assign) CGSize     itemSize;

// collectionview cell 布局专用 (当前行容纳的最大元素个数-即改行可容纳maxRow个cell)
@property(nonatomic, assign) NSInteger maxRow;



@end

NS_ASSUME_NONNULL_END
