//
//  BServerHandle.m
//  BModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "BServerHandle.h"
#import "BeeHive.h"
#import <PublicModule/PublicModule.h>
#import "BFirstViewController.h"
#import "BSecondViewController.h"

@interface BServerHandle ()<BServerProtocol>

@end

@BeeHiveService(BServerProtocol, BServerHandle);

@implementation BServerHandle


- (nonnull UIViewController *)getFristViewController {
     return [[BFirstViewController alloc] init];
}

- (nonnull UIViewController *)getSecondViewController {
    BSecondViewController *bsvc = [[BSecondViewController alloc] init];
 
    return bsvc;
}




@end
