//
//  Test_TableViewCell.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_TableViewCell.h"
#import "Test_ReuseModel.h"
@interface Test_TableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *pageNameLab;


@end

@implementation Test_TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateUIWithModel:(Test_ReuseModel *)model {
    self.pageNameLab.text = model.pageName;
}



@end
