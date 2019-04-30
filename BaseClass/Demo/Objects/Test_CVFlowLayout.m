//
//  Test_CVFlowLayout.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_CVFlowLayout.h"
#import "BaseResueModel.h"

@implementation Test_CVFlowLayout

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    BaseResueModel *model = [self.delegate flowLayout:self reuseModelAtIndexPath:indexPath];
    
    attr.frame = CGRectMake((model.itemSize.width + 10)* indexPath.row, 0, model.itemSize.width, model.itemSize.height);
    
    return attr;
}

@end
