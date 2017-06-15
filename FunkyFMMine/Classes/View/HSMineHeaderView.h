//
//  HSMineHeaderView.h
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSMineHeaderView : UIView

/**
 *  从xib中创建一个nib视图
 */
+ (instancetype)mineHeaderView;

//节目管理
@property (nonatomic, copy) void(^programClickTask)();

//录音
@property (nonatomic, copy) void(^recordClickTask)();

//设置点击
@property (nonatomic, copy) void(^settingClickTask)();

@property (weak, nonatomic) IBOutlet UIImageView *bgImgView;

@end
