//
//文件名: HQSetTableViewCell.m
//项目名: TaPinCaiXiaoAPP
//创建者: admin
//描述:
//修改时间:   2021/6/17
//
    

#import "HQSetTableViewCell.h"
#import "Masonry.h"

#define TPRealWidth(value) ((value)/375.0f*[UIScreen mainScreen].bounds.size.width)

@implementation HQSetTableViewCellVM

- (NSString *)observingKeyPath
{
    return @"rightEnum";
}

@end

@interface HQSetTableViewCell ()

@property (nonatomic, retain) HQSetTableViewCellVM * currentVM;
@property (nonatomic, retain) UILabel * labelTitle;
@property (nonatomic, retain) UIButton * btnRight;
@property (nonatomic, retain) UIActivityIndicatorView *loading;

@end

@implementation HQSetTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupUI
{
    
    self.contentView.backgroundColor = [UIColor whiteColor];
//    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    _labelTitle = ({
        UILabel * label = [UILabel new];
        label.text = @"---";
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:TPRealWidth(14)];
        label;
    });
    [self.contentView addSubview:_labelTitle];
    
    
    [_labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(TPRealWidth(15));
        make.bottom.mas_equalTo(TPRealWidth(-15));
        make.height.mas_equalTo(_labelTitle.font.pointSize);
    }];
    
    
    
    _btnRight = ({
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:@"清除缓存" forState:0];
        [btn setTitleColor:[UIColor purpleColor] forState:0];
        btn.titleLabel.font = [UIFont systemFontOfSize:TPRealWidth(11)];
        btn.layer.cornerRadius = TPRealWidth(11);
        btn;
    });
    
    [[_btnRight rac_signalForControlEvents:UIControlEventTouchUpInside]subscribeNext:^(__kindof UIControl * _Nullable x) {
        if (_currentVM.cacheBlock) {
            _currentVM.cacheBlock();
        }
    }];
    
    [self.contentView addSubview:_btnRight];
    
    [_btnRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TPRealWidth(62), TPRealWidth(22)));
        make.right.mas_equalTo(TPRealWidth(-15));
        make.centerY.mas_equalTo(0);
    }];
    
    _loading = [[UIActivityIndicatorView alloc] init];
    _loading.color = [UIColor redColor];
    [self.contentView addSubview:_loading];
//    [loading startAnimating];
    _loading.bounds = CGRectMake(0, 0, TPRealWidth(22), TPRealWidth(22));
    _loading.hidesWhenStopped = YES;
    [_loading mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.contentView.mas_right).offset(TPRealWidth(-26));
        make.centerY.mas_equalTo(0);
    }];
    
}

-(void)setViewModel:(LBJTableViewCellVM *)viewModel
{
    [super setViewModel:viewModel];
    _currentVM = (HQSetTableViewCellVM *)viewModel;
    _labelTitle.text = _currentVM.title;
    self.accessoryType = _currentVM.accessoryType;
    
    switch (_currentVM.rightEnum) {
        case HQSetVMRightNone:
        {
            _btnRight.hidden = YES;
            [_loading stopAnimating];
        }
            break;
        case HQSetVMRightCache:
        {
            _btnRight.hidden = NO;
            [_loading stopAnimating];
        }
            break;
        case HQSetVMRightLoading:
        {
            _btnRight.hidden = YES;
            [_loading startAnimating];
        }
            break;
            
        default:
            break;
    }
    
}


@end
