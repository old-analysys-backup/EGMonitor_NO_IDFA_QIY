//
//  EGHomePageViewController.m
//  EGMonitor
//
//  Created by sysylana on 2016/11/17.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "EGHomePageViewController.h"
#import "EGMonitor.h"

@interface EGHomePageViewController ()

@end

@implementation EGHomePageViewController

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

#pragma makr - event action
- (IBAction)customerEvent:(id)sender
{
    NSString *eventId = @"89847462323";
    NSString *eventDesc = @"自定义事件";
    [EGMonitor event:eventId desc:eventDesc attributes:nil];
}

- (IBAction)purchaseAction:(id)sender
{
    NSString *eventId = @"783764562353";
    NSString *eventDesc = @"购买支付";
    NSDictionary *attributes = [[NSDictionary alloc] initWithObjectsAndKeys:@"微信", @"支付渠道", @"140.8", @"支付金额",@"线上支付",@"支付类型", nil];
    [EGMonitor event:eventId desc:eventDesc attributes:attributes];
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
