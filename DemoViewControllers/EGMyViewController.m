//
//  MyViewController.m
//  EGMonitor
//
//  Created by sysylana on 2016/11/17.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "EGMyViewController.h"
#import "EGLoginViewController.h"
#import "EGNextPageViewController.h"
#import "EGMonitor.h"

@interface EGMyViewController ()

@end

@implementation EGMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [EGMonitor beginLogPage:[NSString stringWithUTF8String:object_getClassName(self)] tag:self.title];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [EGMonitor endLogPage:[NSString stringWithUTF8String:object_getClassName(self)] tag:self.title];
}

#pragma mark - logout
- (IBAction)nextPage:(id)sender
{
    EGNextPageViewController *nextPageVC = [[EGNextPageViewController alloc] init];
    [self.navigationController pushViewController:nextPageVC animated:YES];
}

/**
 退出登录 记得结束用户统计跟踪

 @param sender ''
 */
- (IBAction)logOutAction:(id)sender
{    
    EGLoginViewController *rootTabBar = [[EGLoginViewController alloc] init];
    [UIApplication sharedApplication].delegate.window.rootViewController = rootTabBar;
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
