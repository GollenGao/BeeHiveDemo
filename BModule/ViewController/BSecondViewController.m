//
//  BSecondViewController.m
//  BModule
//
//  Created by Gollen on 2019/3/5.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "BSecondViewController.h"

@interface BSecondViewController ()

@end

@implementation BSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    [self setUpItem];
    [self registerUserActivity];
}


- (void)setUpItem {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"这是%@页面",NSStringFromClass(self.class)];
    [self.view addSubview:label];
}



- (void)registerUserActivity{
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:@"cn.BeeHiveDemo.BSecond"];
    activity.title = @"扫一扫";
    activity.keywords = [NSSet setWithObjects:@"BSecond", nil];
    activity.eligibleForSearch = YES;
    activity.eligibleForHandoff = NO;
    [activity becomeCurrent];
    self.userActivity = activity;
}
    
    
@end
