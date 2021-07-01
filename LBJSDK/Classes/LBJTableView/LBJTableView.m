//
//文件名: LBJTableView.m
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import "LBJTableView.h"
#import "LBJTableViewCell.h"
//#import "LBJTableViewHeaderFooterView.h"
@interface LBJTableView() <UITableViewDelegate,UITableViewDataSource>

@end

@implementation LBJTableView

-(NSMutableArray *)formItems
{
    if (_formItems == nil) {
        _formItems = [NSMutableArray array];
    }
    return _formItems;
}


- (instancetype)init
{
    self = [super initWithFrame:CGRectZero style:UITableViewStylePlain];
    if (self) {
        [self setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        self.delegate = self;
        self.dataSource = self;
        self.estimatedRowHeight = 44;
        self.estimatedSectionHeaderHeight = 0;
        self.estimatedSectionFooterHeight = 0;
        self.sectionFooterHeight = 0;
        self.rowHeight = UITableViewAutomaticDimension;
        
    }
    return self;
}



-(void)setRegisterClassDictionary:(NSDictionary<NSString *,Class> *)registerClassDictionary
{
    _registerClassDictionary = registerClassDictionary;
    [_registerClassDictionary enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, Class  _Nonnull obj, BOOL * _Nonnull stop) {
        
        [self registerClass:obj forCellReuseIdentifier:key];
    }];
    
    
//    [self registerClass:LBJTableViewHeaderFooterView.class forHeaderFooterViewReuseIdentifier:NSStringFromClass(LBJTableViewHeaderFooterView.class)];
    
    
}

-(void)reloadData
{
    
    [super reloadData];
}

//是否分组
- (BOOL)isMultipleSection {
    return [self.formItems.firstObject isKindOfClass:[NSArray class]];
}

//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if ([self isMultipleSection]) {
        return self.formItems.count;
    } else {
        return 1;
    }
}


//每组多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // 如果是由多个数组组成，则为多个section，返回每个section的数量;
    if ([self isMultipleSection]) {
        return [self.formItems[section] count];
    } else {
        // 只有一个分组，返回该分组的元素数量
        return self.formItems.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LBJTableViewCell * cell;
    LBJTableViewCellVM * viewModel;
    if ([self isMultipleSection]) {
        viewModel =self.formItems[indexPath.section][indexPath.row];
    }else{
        viewModel =self.formItems[indexPath.row];
    }
    
    if ([[viewModel class] reuseCellIdentifier]) {
        cell = [tableView dequeueReusableCellWithIdentifier:[[viewModel class] reuseCellIdentifier] forIndexPath:indexPath];
    }
    cell.viewModel = viewModel;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LBJTableViewCellVM * viewModel;
    if ([self isMultipleSection]) {
        viewModel =self.formItems[indexPath.section][indexPath.row];
    }else{
        viewModel =self.formItems[indexPath.row];
    }
    if (viewModel.didSelectedHandler) {
        viewModel.didSelectedHandler(viewModel);
    }
    if (viewModel.didSelectedIndexPathHandler) {
        viewModel.didSelectedIndexPathHandler(indexPath);
    }
}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    LBJTableViewHeaderFooterView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass(LBJTableViewHeaderFooterView.class)];
////    TPOrderExpressModel *model = self.modelsDict[@(self.currentIndex)];
////    view.model = model.express[section];
//    return view;
//}



-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (self.didScrollBlock) {
        self.didScrollBlock(scrollView);
    }
}







@end
