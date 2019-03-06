//
//  BeeTabbarController.m
//  PublicModule
//
//  Created by Gollen on 2019/3/5.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "BeeTabbarController.h"
#import "AServerProtocol.h"
#import "BServerProtocol.h"
#import "CServerProtocol.h"

@interface BeeTabbarController ()

@end

@implementation BeeTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpTabbar];
}

- (void)setUpTabbar {

    id <AServerProtocol> aserver = [[BeeHive shareInstance] createService:@protocol(AServerProtocol)];
    UIViewController *avc = [aserver getFristViewController];
    [self addchildVC:avc title:@"home" image:[UIImage imageNamed:@"Home-u"] selectImage:[UIImage imageNamed:@"Home-a"]];
    
    id <BServerProtocol> bserver = [[BeeHive shareInstance] createService:@protocol(BServerProtocol)];
    UIViewController *bvc = [bserver getFristViewController];
    [self addchildVC:bvc title:@"comment" image:[UIImage imageNamed:@"Comment-u"] selectImage:[UIImage imageNamed:@"Comment-a"]];
    
    id <CServerProtocol> cserver = [[BeeHive shareInstance] createService:@protocol(CServerProtocol)];
    UIViewController * cvc = [cserver getFristViewController];
    [self addchildVC:cvc title:@"shop" image:[UIImage imageNamed:@"Shopping-u"] selectImage:[UIImage imageNamed:@"Shopping-a"]];
    
}



- (void)addchildVC:(UIViewController *)childVC title:(NSString *)title image:(UIImage *)image selectImage:(UIImage *)selectImage{
    //    设置子控制的文字
    childVC.title = title;
    childVC.tabBarItem.image = image;
    
    childVC.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    //    设置不可用状态
    NSMutableDictionary *dicAttrs = [NSMutableDictionary dictionary];
    dicAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    dicAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:(UIControlStateNormal)];
    [childVC.tabBarItem setTitleTextAttributes:dicAttrs forState:(UIControlStateSelected)];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:nav];
}





@end
