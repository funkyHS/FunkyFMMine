//
//  HSRowItemTool.h
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HSRowItemTool : NSObject


/**
 获取cell的数据源方法
 
 @return 数据源数组 ，结构如下：
 
 [
     [item1],
     [item2,item3],
     [item4,item5,item6],
     ...
 ]
 
 */
+(NSArray *)cellData;


@end
