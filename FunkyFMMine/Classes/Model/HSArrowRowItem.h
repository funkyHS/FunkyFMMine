//
//  HSArrowRowItem.h
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSArrowRowItem : NSObject


@property (nonatomic,strong) NSString *title;

@property (nonatomic,copy) void(^callBack)(UIViewController *fromVC);

-(instancetype)initWithTitle:(NSString *)str callBack:(void(^)(UIViewController *fromVC))callBack;


@end
