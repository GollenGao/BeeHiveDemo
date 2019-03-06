//
//  CServerHandle.m
//  CModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "CServerHandle.h"
#import <PublicModule/PublicModule.h>
#import "CFirstViewController.h"
#import "CSecondViewController.h"

@interface CServerHandle ()<CServerProtocol>

@end

@implementation CServerHandle

- (nonnull UIViewController *)getFristViewController {

    return [[CFirstViewController alloc] init];
}

- (nonnull UIViewController *)getSecondViewController {
    
    CSecondViewController *csvc = [[CSecondViewController alloc] init];
    NSUserActivity *activity = [[NSUserActivity alloc]initWithActivityType:@"cn.CycleProgress.BeeHiveDemo"];
    activity.title = @"添加好友";
    activity.keywords = [NSSet setWithObjects:@"PushA", nil];
    activity.eligibleForSearch = YES;
    activity.eligibleForHandoff = NO;
    [activity becomeCurrent];
    csvc.userActivity = activity;
    return csvc;
}

@end

