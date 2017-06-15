//
//  MineAPI.m
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import "MineAPI.h"
#import "HSMineVC.h"

@implementation MineAPI

static MineAPI *_shareInstance;

+ (instancetype)shareInstance {
    
    if (_shareInstance == nil) {
        _shareInstance = [[MineAPI alloc] init];
    }
    return _shareInstance;
    
}


-(UIViewController *)mineVC {
    
    return [HSMineVC new];
}


@end
