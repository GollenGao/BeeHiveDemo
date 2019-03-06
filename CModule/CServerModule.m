//
//  CServerModule.m
//  CModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "CServerModule.h"
#import "BeeHive.h"
#import "CSecondViewController.h"
#import "BHRouter.h"

@interface CServerModule ()<BHModuleProtocol>

@end

@implementation CServerModule

- (void)modSetUp:(BHContext *)context {
    NSLog(@"CServerModule-----setUp");
    [[BHRouter globalRouter] addPathComponent:@"CSecondViewController" forClass:[CSecondViewController class]];

}

- (void)modInit:(BHContext *)context {
    NSLog(@"CServerModule-----init");
}




@end
