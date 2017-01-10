//
//  EGLoginViewController.m
//  EGMonitor
//
//  Created by sysylana on 2016/11/17.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "EGLoginViewController.h"
#import "EGMonitor.h"
#import "EGTabbarViewController.h"
#import "EGAppDelegate.h"

@interface EGLoginViewController ()

@end

@implementation EGLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"登录页面";
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

#pragma mark - event action
/**
 未添加用户统计信息时，自定义事件

 @param sender ''
 */
- (IBAction)UnLoginEvent:(id)sender
{
    NSString *eventId = @"1001";
    NSString *eventDesc = @"登陆button";
    NSDictionary *attributes = [[NSDictionary alloc]initWithObjectsAndKeys:@"免登陆tag", @"tag", @"100", @"value", nil];
    [EGMonitor event:eventId desc:eventDesc attributes:attributes];
    
    [self gotoHomePage];
}

- (void)gotoHomePage
{
    NSLog(@"登录系统");
    EGTabbarViewController *rootTabBar = [[EGTabbarViewController alloc] init];
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
