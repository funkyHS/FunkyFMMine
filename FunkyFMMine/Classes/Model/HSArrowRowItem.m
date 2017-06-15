//
//  HSArrowRowItem.m
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import "HSArrowRowItem.h"

@implementation HSArrowRowItem


-(instancetype)initWithTitle:(NSString *)str callBack:(void(^)(UIViewController *fromVC))callBack {
        
    if ([super init]) {
        
        self.title = str;
        self.callBack = callBack;
    }
    
    return self;
}

@end
