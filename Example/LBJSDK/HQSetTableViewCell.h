//
//文件名: HQSetTableViewCell.h
//项目名: TaPinCaiXiaoAPP
//创建者: admin
//描述:
//修改时间:   2021/6/17
//
    

#import "LBJTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    HQSetVMRightNone = 0,
    HQSetVMRightCache,
    HQSetVMRightLoading,
} HQSetVM_RightShow;


@interface HQSetTableViewCellVM :  LBJTableViewCellVM

@property (nonatomic, copy) NSString * title;
@property (nonatomic, assign) UITableViewCellAccessoryType accessoryType;
@property (nonatomic, assign) HQSetVM_RightShow rightEnum;

@property (nonatomic, copy) void (^cacheBlock)(void);


- (NSString *)observingKeyPath;

@end



@interface HQSetTableViewCell : LBJTableViewCell

@end

NS_ASSUME_NONNULL_END
