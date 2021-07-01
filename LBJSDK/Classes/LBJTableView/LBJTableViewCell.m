//
//文件名: LBJTableViewCell.m
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import "LBJTableViewCell.h"
#import "Masonry.h"

#define TPRealWidth(value) ((value)/375.0f*[UIScreen mainScreen].bounds.size.width)


@interface LBJTableViewCell()

@property (nonatomic,retain)UIView * view_line;

@end

@implementation LBJTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self addSubview:self.view_line];
        
        [self.view_line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.mas_left).with.offset(15);
            make.height.mas_equalTo(1);
            make.right.equalTo(self.mas_right).offset(-15);
            make.bottom.mas_equalTo(self.contentView.mas_bottom);
        }];
        
        
        [self setupUI];
    }
    return self;
}

-(void)setupUI
{
    
}

-(void)setViewModel:(LBJTableViewCellVM *)viewModel
{
    if (_viewModel != viewModel) {
        _viewModel = viewModel;
        self.view_line.hidden = !_viewModel.showBottomLine;
    }
    
    
}


- (UIView *)view_line {
    if (!_view_line) {
        _view_line = [[UIView alloc] init];
        _view_line.backgroundColor = [UIColor lightGrayColor];
        // 自定义的分割线默认隐藏
        _view_line.hidden = YES;
//        [self.contentView addSubview:_line];
    }

    return _view_line;
}


@end


@implementation LBJTableViewCellVM

+ (NSString *)reuseCellIdentifier {
    return NSStringFromClass([self class]);
}



@end
