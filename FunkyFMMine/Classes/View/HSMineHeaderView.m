//
//  HSMineHeaderView.m
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/15.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import "HSMineHeaderView.h"

@interface HSMineHeaderView ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@end

@implementation HSMineHeaderView


- (void)awakeFromNib {
    [super awakeFromNib];
    self.iconImageView.layer.cornerRadius = 40;
    self.iconImageView.layer.masksToBounds = YES;
    self.iconImageView.layer.borderWidth = 3;
    self.iconImageView.layer.borderColor = [UIColor grayColor].CGColor;
}

+ (instancetype)mineHeaderView {
    return [[[NSBundle bundleForClass:self] loadNibNamed:@"HSMineHeaderView" owner:nil options:nil] firstObject];
}
//节目管理
- (IBAction)programMangeClick:(id)sender {
    if (self.programClickTask) {
        self.programClickTask();
    }
}

- (IBAction)settingClick:(id)sender {
    if (self.settingClickTask) {
        self.settingClickTask();
    }
}

//录音
- (IBAction)recordClick:(id)sender {
    if (self.recordClickTask) {
        self.recordClickTask();
    }
}



@end
