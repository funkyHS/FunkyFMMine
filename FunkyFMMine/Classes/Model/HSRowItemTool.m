//
//  HSRowItemTool.m
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import "HSRowItemTool.h"
#import "HSArrowRowItem.h"

@implementation HSRowItemTool


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
+(NSArray *)cellData{
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    [arr addObject:[self getGroup1]];
    [arr addObject:[self getGroup2]];
    [arr addObject:[self getGroup3]];
    [arr addObject:[self getGroup4]];
    [arr addObject:[self getGroup5]];
    return arr;
    
    
}


+(NSArray *)getGroup1{
    
    HSArrowRowItem *item1 = [[HSArrowRowItem alloc]initWithTitle:@"我的消息" callBack:^(UIViewController *fromVC){
        
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    return @[item1];
    
}

+(NSArray *)getGroup2{
    
    HSArrowRowItem *item2 = [[HSArrowRowItem alloc]initWithTitle:@"我的订阅" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item3 = [[HSArrowRowItem alloc]initWithTitle:@"赞过的" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    return @[item2,item3];
    
}

+(NSArray *)getGroup3{
    HSArrowRowItem *item4 = [[HSArrowRowItem alloc]initWithTitle:@"已购声音" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item5 = [[HSArrowRowItem alloc]initWithTitle:@"喜点余额" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    return @[item4,item5];
}

+(NSArray *)getGroup4 {
    
    HSArrowRowItem *item6 = [[HSArrowRowItem alloc]initWithTitle:@"喜马拉雅商城" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item7 = [[HSArrowRowItem alloc]initWithTitle:@"我的商城订单" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item8 = [[HSArrowRowItem alloc]initWithTitle:@"我的优惠券" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item9 = [[HSArrowRowItem alloc]initWithTitle:@"游戏中心" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    HSArrowRowItem *item10 = [[HSArrowRowItem alloc]initWithTitle:@"智能硬件设备" callBack:^(UIViewController *fromVC) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    }];
    
    return @[item6,item7,item8,item9,item10];
    
}

+(NSArray *)getGroup5 {
    
    HSArrowRowItem *item11 = [[HSArrowRowItem alloc]init];
    item11.title = @"免流量服务";
    item11.callBack = ^(UIViewController *fromVC){
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    };
    
    HSArrowRowItem *item12 = [[HSArrowRowItem alloc]init];
    item12.title = @"找听友";
    item12.callBack = ^(UIViewController *fromVC){
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    };
    
    HSArrowRowItem *item13 = [[HSArrowRowItem alloc]init];
    item13.title = @"意见反馈";
    item13.callBack = ^(UIViewController *fromVC){
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    };
    
    HSArrowRowItem *item14 = [[HSArrowRowItem alloc]init];
    item14.title = @"设置";
    item14.callBack = ^(UIViewController *fromVC){
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [fromVC.navigationController pushViewController:vc animated:YES];
    };
    
    return @[item11,item12,item13,item14];
    
}


@end
