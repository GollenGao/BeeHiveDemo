//
//  CSecondViewController.m
//  CModule
//
//  Created by Gollen on 2019/3/5.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import "CSecondViewController.h"

@interface CSecondViewController ()

@end

@implementation CSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    [self setUpItem];
}


- (void)setUpItem {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"这是%@页面",NSStringFromClass(self.class)];
    [self.view addSubview:label];
}

@end
