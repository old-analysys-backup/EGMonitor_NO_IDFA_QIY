//
//  EGTabbarViewController.m
//  EGMonitor
//
//  Created by sysylana on 2016/11/17.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "EGTabbarViewController.h"
#import "EGHomePageViewController.h"
#import "EGMyViewController.h"

#define kMainColor [UIColor colorWithRed:39/255.0 green:169/255.0 blue:239/255.0 alpha:0.8]

@interface EGTabbarViewController ()

@end

@implementation EGTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    EGHomePageViewController *rootVC = [[EGHomePageViewController alloc] init];
    rootVC.title = @"首页title";
    UINavigationController *rootNav = [[UINavigationController alloc]initWithRootViewController:rootVC];
    rootNav.tabBarItem.title = @"首页";
    
    NSDictionary *rootVCNavColorDic = [NSDictionary dictionaryWithObjectsAndKeys:kMainColor,NSForegroundColorAttributeName, nil];
    rootNav.navigationBar.titleTextAttributes = rootVCNavColorDic;
    
    EGMyViewController *myVC = [[EGMyViewController alloc] init];
    myVC.title = @"我 title";
    UINavigationController *myNav = [[UINavigationController alloc]initWithRootViewController:myVC];
    myNav.tabBarItem.title = @"我";
    
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName, [UIFont fontWithName:@"Helvetica" size:15],NSFontAttributeName,nil] forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kMainColor, NSForegroundColorAttributeName, [UIFont fontWithName:@"Helvetica" size:15],NSFontAttributeName,nil] forState:UIControlStateSelected];
    
    self.viewControllers = @[rootNav,myNav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
