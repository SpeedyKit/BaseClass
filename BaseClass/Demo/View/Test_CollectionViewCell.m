//
//  Test_CollectionViewCell.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_CollectionViewCell.h"
#import "Test_ReuseModel.h"

@interface Test_CollectionViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *pageNameLab;

@end

@implementation Test_CollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)updateUIWithModel:(Test_ReuseModel *)model {
    self.pageNameLab.text = model.pageName;
}

@end
