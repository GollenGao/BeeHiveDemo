//
//  ASecondViewController.m
//  AModule
//
//  Created by Gollen on 2019/3/5.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "ASecondViewController.h"

@interface ASecondViewController ()

@end

@implementation ASecondViewController

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
    
}

@end
