//
//文件名: LBJTableViewCell.h
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import <UIKit/UIKit.h>
#import "ReactiveObjC.h"
NS_ASSUME_NONNULL_BEGIN

@interface LBJTableViewCellVM : NSObject


@property (nonatomic, assign) BOOL showBottomLine;


@property (nonatomic, copy) void(^didSelectedHandler)(id obj);

@property (nonatomic, copy) void(^didSelectedIndexPathHandler)(NSIndexPath * indexPath);

/** 重用标识字符串 */
+ (NSString *)reuseCellIdentifier;



@end


@interface LBJTableViewCell : UITableViewCell

@property (nonatomic,strong) LBJTableViewCellVM * viewModel;

-(void)setupUI;



@end

NS_ASSUME_NONNULL_END
