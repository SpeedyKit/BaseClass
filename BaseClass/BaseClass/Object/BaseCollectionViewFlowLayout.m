//
//  BaseCollectionViewFlowLayout.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseCollectionViewFlowLayout.h"

@interface BaseCollectionViewFlowLayout ()

@property(nonatomic, strong) NSMutableArray *attrs;

@end

@implementation BaseCollectionViewFlowLayout

- (void)prepareLayout {
    [super prepareLayout];
    
    NSInteger sectionCount = [self.collectionView.dataSource numberOfSectionsInCollectionView:self.collectionView];
    for (NSInteger section = 0; section < sectionCount; section ++) {
        NSInteger rowCount = [self.collectionView.dataSource collectionView:self.collectionView numberOfItemsInSection:section];
        for (NSInteger row = 0; row < rowCount; row ++) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:section];
            [self.attrs addObject:[self layoutAttributesForItemAtIndexPath:indexPath]];
        }
    }
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    return self.attrs;
}

- (NSMutableArray *)attrs {
    if (_attrs == nil) {
        _attrs = [NSMutableArray new];
    }
    return _attrs;
}


@end
