//
//  BaseViewController.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubViews];
}



- (void)initSubViews {
    
}


- (void)setLeftButtonItemWithImage:(UIImage *)image
                            target:(id)target
                          barStyle:(UIBarButtonItemStyle)style
                            action:(SEL)action {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:style target:target action:action];
    
}

- (void)setLeftButtonItemWithTitle:(NSString *)title
                          fontSize:(CGFloat )fontSize
                         textColor:(UIColor *)textColor
                          barStyle:(UIBarButtonItemStyle)barStyle
                            target:(id)target
                            action:(SEL)action {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:title  style:barStyle target:self action:action];
    NSMutableAttributedString *attributededString = [[NSMutableAttributedString alloc]initWithString:title];
    NSRange range = NSMakeRange(0, title.length);
    if (textColor) {
        [attributededString addAttribute:NSForegroundColorAttributeName value:textColor range:range];
    }
    if (fontSize > 0) {
        [attributededString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:range];
    }
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:[attributededString attributesAtIndex:0 effectiveRange:NULL] forState:UIControlStateNormal];
    
}



- (void)setRightButtonItemWithImage:(UIImage *)image
                             target:(id)target
                           barStyle:(UIBarButtonItemStyle)style
                             action:(SEL)action {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:style target:target action:action];
    
}

- (void)setRightButtonItemWithTitle:(NSString *)title
                           fontSize:(CGFloat )fontSize
                          textColor:(UIColor *)textColor
                           barStyle:(UIBarButtonItemStyle)barStyle
                             target:(id)target
                             action:(SEL)action {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:title  style:barStyle target:self action:action];
    
    NSMutableAttributedString *attributededString = [[NSMutableAttributedString alloc]initWithString:title];
    NSRange range = NSMakeRange(0, title.length);
    if (textColor) {
        [attributededString addAttribute:NSForegroundColorAttributeName value:textColor range:range];
    }
    if (fontSize > 0) {
        [attributededString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:range];
    }
    [self.navigationItem.leftBarButtonItem setTitleTextAttributes:[attributededString attributesAtIndex:0 effectiveRange:NULL] forState:UIControlStateNormal];
}

@end
