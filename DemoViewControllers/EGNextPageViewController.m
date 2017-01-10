//
//  EGNextPageViewController.m
//  EGMonitor
//
//  Created by sysylana on 2016/11/17.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "EGNextPageViewController.h"
#import "EGMonitor.h"

@interface EGNextPageViewController ()
{
    int _randomInt;
}
@end

@implementation EGNextPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _randomInt = arc4random() % 100;
    self.title = @"下一页 页面";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [EGMonitor beginLogPage:[NSString stringWithFormat:@"nextPage->%d",_randomInt] tag:self.title];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [EGMonitor endLogPage:[NSString stringWithFormat:@"nextPage->%d",_randomInt] tag:self.title];
}

#pragma mark - event action
- (IBAction)customerEvent:(id)sender
{
    NSString *eventId = @"352353";
    NSString *eventDesc = @"下一页自定义事件";
    [EGMonitor event:eventId desc:eventDesc attributes:[NSDictionary dictionaryWithObjectsAndKeys:@"自定义属性value",@"自定义属性key", nil]];
}

#pragma mark - viewController change
- (IBAction)nextpageVC:(id)sender
{
    EGNextPageViewController *nextPageVC = [[EGNextPageViewController alloc] init];
    [self.navigationController pushViewController:nextPageVC animated:YES];
}

- (IBAction)gotoTopVC:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
