//
//  ASeverModule.m
//  AModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "ASeverModule.h"
#import "BeeHive.h"
#import "AServerHandle.h"
#import <PublicModule/PublicModule.h>
#import "ASecondViewController.h"


@interface ASeverModule ()<BHModuleProtocol>



@end

@implementation ASeverModule

/* BH_EXPORT_MODULE(YES) 等同于
 
 + (void)load {
 [BeeHive registerDynamicModule:[self class]];
 }
 - (BOOL)async {
 return YES;
 }
 
 */
BH_EXPORT_MODULE(YES)



- (void)modSetUp:(BHContext *)context {
    NSLog(@"ASeverModule-----setUp");
    [[BeeHive shareInstance] registerService:@protocol(AServerProtocol) service:[AServerHandle class]];
}

- (void)modInit:(BHContext *)context {
    NSLog(@"ASeverModule-----init");
    
}


- (void)modWillContinueUserActivity:(BHContext *)context {
    
    UITabBarController *tabbar = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    if ([context.userActivityItem.userActivityType isEqualToString:@"cn.BeeHiveDemo.ASecond"]) {
        ASecondViewController *asvc = [[ASecondViewController alloc] init];
        tabbar.selectedIndex = 1;
        if (tabbar.viewControllers.count >= 2) {
            UINavigationController *ahomeNav = tabbar.viewControllers[1];
            [ahomeNav pushViewController:asvc animated:NO];
        }
    }
}



@end
