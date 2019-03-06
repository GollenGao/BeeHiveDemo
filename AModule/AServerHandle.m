//
//  AServerHandle.m
//  AModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "AServerHandle.h"
#import <PublicModule/PublicModule.h>
#import "AFirstViewController.h"
#import "ASecondViewController.h"


@interface AServerHandle ()<AServerProtocol>

@end

@implementation AServerHandle

- (nonnull UIViewController *)getFristViewController {
    return [[AFirstViewController alloc] init];
}

- (nonnull UIViewController *)getSecondViewController {
    ASecondViewController *asvc = [[ASecondViewController alloc] init];
    return asvc;
}





@end
