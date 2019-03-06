//
//  BServerModule.m
//  BModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "BServerModule.h"
#import "BeeHive.h"
#import "BSecondViewController.h"


@interface BServerModule ()<BHModuleProtocol>

@end

@BeeHiveMod(BServerModule)
@implementation BServerModule


- (void)modSetUp:(BHContext *)context {
    NSLog(@"BServerModule-----setUp");
   
}

- (void)modInit:(BHContext *)context {
    NSLog(@"BServerModule-----init");
    

}

- (void)modWillContinueUserActivity:(BHContext *)context {

    UITabBarController *tabbar = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    if ([context.userActivityItem.userActivityType isEqualToString:@"cn.BeeHiveDemo.BSecond"]) {
        BSecondViewController *bsvc = [[BSecondViewController alloc] init];
        tabbar.selectedIndex = 1;
        if (tabbar.viewControllers.count >= 2) {
            UINavigationController *bhomeNav = tabbar.viewControllers[1];
            [bhomeNav pushViewController:bsvc animated:YES];
        }
    }
    
}








@end
