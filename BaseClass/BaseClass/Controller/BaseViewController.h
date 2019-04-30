//
//  BaseViewController.h
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BaseViewControllerOptions <NSObject>

// 该方法在 - viewDidLoad 之后会自动调用，控制器中初始化UI的代码务必都放到该方法里
- (void)initSubViews;



/**
 设置左边的导航按钮

 @param image 图片
 @param target target
 @param style 按钮风格
 @param action 事件
 */
- (void)setLeftButtonItemWithImage:(UIImage *)image
                            target:(id)target
                          barStyle:(UIBarButtonItemStyle)style
                            action:(SEL)action ;

/**
 设置左边的导航按钮

 @param title 标题
 @param fontSize 字体大小
 @param textColor 字体颜色
 @param barStyle 按钮风格
 @param target target
 @param action 事件
 */
- (void)setLeftButtonItemWithTitle:(NSString *)title
                          fontSize:(CGFloat )fontSize
                         textColor:(UIColor *)textColor
                          barStyle:(UIBarButtonItemStyle)barStyle
                            target:(id)target
                            action:(SEL)action;



/**
 设置右边的导航按钮

 @param image 按钮图片
 @param target target
 @param style 按钮风格
 @param action 事件
 */
- (void)setRightButtonItemWithImage:(UIImage *)image
                             target:(id)target
                           barStyle:(UIBarButtonItemStyle)style
                             action:(SEL)action ;



/**
 设置右边的导航按钮

 @param title 标题
 @param fontSize 字体大小
 @param textColor 字体颜色
 @param barStyle 按钮风格
 @param target target
 @param action 事件
 */
- (void)setRightButtonItemWithTitle:(NSString *)title
                           fontSize:(CGFloat )fontSize
                          textColor:(UIColor *)textColor
                           barStyle:(UIBarButtonItemStyle)barStyle
                             target:(id)target
                             action:(SEL)action ;

@end

@interface BaseViewController : UIViewController<BaseViewControllerOptions>



@end

NS_ASSUME_NONNULL_END
