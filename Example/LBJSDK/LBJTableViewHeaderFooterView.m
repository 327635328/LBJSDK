//
//文件名: LBJTableViewHeaderFooterView.m
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import "LBJTableViewHeaderFooterView.h"

@implementation LBJTableViewHeaderFooterView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self _setupUI];
    }
    return self;
}


- (void)_setupUI{
    self.backgroundColor = [UIColor greenColor];
}

-(void)setViewModel:(LBJTableViewHeaderFooterViewVM *)viewModel
{
    if (_viewModel != viewModel) {
        _viewModel = viewModel;
    }
}


@end


@implementation LBJTableViewHeaderFooterViewVM

//+ (NSString *)reuseCellIdentifier {
//    return NSStringFromClass([self class]);
//}



@end
