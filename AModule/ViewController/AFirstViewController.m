//
//  AFirstViewController.m
//  AModule
//
//  Created by Gollen on 2019/3/5.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "AFirstViewController.h"
#import "ASecondViewController.h"
#import "BeeHive.h"
#import <PublicModule/PublicModule.h>
#import "BHRouter.h"

@interface AFirstViewController ()

@end

@implementation AFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpItem];
}


- (void)setUpItem {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"这是%@页面",NSStringFromClass(self.class)];
    [self.view addSubview:label];
    
    UIButton *button1 = [UIButton buttonWithType:(UIButtonTypeSystem)];
    button1.frame = CGRectMake(100, 200, 100, 50);
    [button1 setTitle:@"PushASecond" forState:(UIControlStateNormal)];
    [button1 addTarget:self action:@selector(pushASecond) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:(UIButtonTypeSystem)];
    button2.frame = CGRectMake(100, 250, 100, 50);
    [button2 setTitle:@"PushBSecond" forState:(UIControlStateNormal)];
    [button2 addTarget:self action:@selector(pushBSecond) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button2];
    
//    UIButton *button3 = [UIButton buttonWithType:(UIButtonTypeSystem)];
//    button3.frame = CGRectMake(100, 300, 100, 50);
//    [button3 setTitle:@"PushCSecond" forState:(UIControlStateNormal)];
//    [button3 addTarget:self action:@selector(pushCSecond) forControlEvents:(UIControlEventTouchUpInside)];
//    [self.view addSubview:button3];
    
}

- (void)pushASecond {
    // 模块内的没有用必要用路由
    ASecondViewController *asvc = [[ASecondViewController alloc] init];
    [self.navigationController pushViewController:asvc animated:YES];
}

- (void)pushBSecond {
    // 不同模块间跳转要
    id <BServerProtocol> server = [[BeeHive shareInstance] createService:@protocol(BServerProtocol)];
    [self.navigationController pushViewController:[server getSecondViewController] animated:YES];
    
}

- (void)pushCSecond {
    /* 貌似有点bug 暂时不能通过这个方式. 后面会补充 */
    NSURL *url = [NSURL URLWithString:@"com.alibaba.beehive://jump.vc.beehive/CSecondViewController.push"];
    if ([BHRouter canOpenURL:url]) {
        [BHRouter openURL:url];
    }
}


@end
