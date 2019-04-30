//
//  Test_TabBarController.m
//  BaseClass
//
//  Created by 谢飞 on 2019/4/30.
//  Copyright © 2019 谢飞. All rights reserved.
//

#import "Test_TabBarController.h"
#import "Test_NavigationController.h"
#import "Test_ViewController.h"
@interface Test_TabBarController ()

@end

@implementation Test_TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configControllers];
}

- (void)configControllers {
    NSMutableArray <Test_NavigationController*>*controllers = [NSMutableArray new];
    for (NSInteger index = 0; index < 2; index ++) {
        
        Test_ViewController *controller = [Test_ViewController new];
        Test_NavigationController *nvController = [[Test_NavigationController alloc]initWithRootViewController:controller];
        UITabBarItem *barItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:index];
        nvController.tabBarItem = barItem;
        [controllers addObject:nvController];
    }
    self.viewControllers = controllers;
}

@end
