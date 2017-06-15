//
//  HSMineVC.m
//  FunkyFMMine
//
//  Created by 胡晟 on 2017/6/14.
//  Copyright © 2017年 funkyHS. All rights reserved.
//

#import "HSMineVC.h"
#import "HSMineHeaderView.h"
#import "HSArrowRowItem.h"
#import "HSRowItemTool.h"
#import "Base.h"
#import "UIView+HSLayout.h"

const CGFloat HSTopViewH = 300;
@interface HSMineVC ()<UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_dataArr;
}

@property(nonatomic,weak)HSMineHeaderView *header;


@end

@implementation HSMineVC


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self setUpHeadView];
    
    _dataArr = [HSRowItemTool cellData];
    [self.tableView reloadData];
    
}
-(void)setUpHeadView {
    
    self.tableView.tableHeaderView = self.header;
    self.tableView.backgroundColor = HSColor(247,247,247);
    
    // 节目管理
    self.header.programClickTask = ^{
        
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    };
    
    // 录音
    self.header.recordClickTask = ^{
        
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    };
    
    // 设置点击
    self.header.settingClickTask = ^{
        
        UIViewController *vc = [[UIViewController alloc]init];
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    };

}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [_dataArr[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HSMineVCCellId"];
    if (cell == nil){
        
        cell =  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HSMineVCCellId"];
    }
    
    NSArray *arr = _dataArr[indexPath.section];
    HSArrowRowItem *item = arr[indexPath.row];
    cell.textLabel.text = item.title;
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *arr = _dataArr[indexPath.section];
    HSArrowRowItem *item = arr[indexPath.row];
    item.callBack ? item.callBack(self) : nil;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    //这里的偏移量是纵向从contentInset算起 则一开始偏移就是0 向下为负 上为正 下拉
    
    // 获取到tableView偏移量
    CGFloat Offset_y = scrollView.contentOffset.y;
    //NSLog(@"===== > %f",Offset_y);
    // 下拉 纵向偏移量变小 变成负的
    if ( Offset_y < 0) {
        // 拉伸后图片的高度
        CGFloat totalOffset = HSTopViewH - Offset_y;
        
        // 图片放大比例
        CGFloat scale = totalOffset / HSTopViewH;
        // 拉伸后图片位置
        self.header.bgImgView.frame = CGRectMake(-(kScreenWidth * scale - kScreenWidth) / 2, Offset_y, kScreenWidth * scale, totalOffset);
        
        // 仅拉长图片
        //self.header.bgImgView.frame = CGRectMake(0, Offset_y, kScreenWidth, totalOffset);
    }
    
}

#pragma mark - 懒加载

-(HSMineHeaderView *)header{
    if (_header == nil) {
        HSMineHeaderView *headerV = [HSMineHeaderView mineHeaderView];
        headerV.width = kScreenWidth;
        headerV.height = HSTopViewH;
        _header = headerV;
    }
    
    return _header;
}

@end
