//
//  BServerProtocol.h
//  PublicModule
//
//  Created by Gollen on 2019/3/4.
//  Copyright © 2019 CycleProgress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeeHive.h"
NS_ASSUME_NONNULL_BEGIN

@protocol BServerProtocol <NSObject,BHServiceProtocol>


- (UIViewController *)getFristViewController;

- (UIViewController *)getSecondViewController;




@end

NS_ASSUME_NONNULL_END
