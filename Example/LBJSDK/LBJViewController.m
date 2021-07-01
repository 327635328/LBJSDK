//
//  LBJViewController.m
//  LBJSDK
//
//  Created by x1248399884@163.com on 07/01/2021.
//  Copyright (c) 2021 x1248399884@163.com. All rights reserved.
//

#import "LBJViewController.h"

#import "Masonry.h"
//#import "LBJTableView.h"
#import "HQSetTableViewCell.h"
#import "LBJSDK.h"
@interface LBJViewController ()
@property (nonatomic,retain) LBJTableView * tableView;
@end

@implementation LBJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
  
    UIView * view = [UIView new];
    view.backgroundColor = [UIColor lbj_RandomColor];
    view.backgroundColor = [UIColor lbj_colorWithHexString:@"#999999"];
    view.backgroundColor = [UIColor lbj_colorWithHexString:@"#999999" alpha:0.6];
    
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        
    }];
    
    self.tableView.registerClassDictionary = @{
        [HQSetTableViewCellVM reuseCellIdentifier]  : [HQSetTableViewCell class],
    };
    
    HQSetTableViewCellVM * viewModel_about = [[HQSetTableViewCellVM alloc]init];
    viewModel_about.title = [NSString stringWithFormat:@"关于它品(v%@)",@"111"];
    viewModel_about.showBottomLine = YES;
    viewModel_about.rightEnum = HQSetVMRightNone;
    viewModel_about.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    viewModel_about.didSelectedHandler = ^(id  _Nonnull obj) {
        NSLog(@"我点击了");
    };
    [self.tableView.formItems addObject:viewModel_about];
    
    
    HQSetTableViewCellVM * viewModel_cache = [[HQSetTableViewCellVM alloc]init];
    viewModel_cache.title = [NSString stringWithFormat:@"系统缓存"];
    viewModel_cache.accessoryType = UITableViewCellAccessoryNone;
    viewModel_cache.rightEnum = HQSetVMRightCache;
    viewModel_cache.cacheBlock = ^{
        NSLog(@"我点击了");
    };
    [self.tableView.formItems addObject:viewModel_cache];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}



-(LBJTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[LBJTableView alloc]init];
        _tableView.backgroundColor = [UIColor orangeColor];
    }
    return _tableView;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
