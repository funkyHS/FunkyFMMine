//
//  MineAPI.h
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MineAPI : NSObject

+ (instancetype)shareInstance;

/**
 获取我的模块控制器
 */
@property (nonatomic, weak, readonly) UIViewController *mineVC;


@end
