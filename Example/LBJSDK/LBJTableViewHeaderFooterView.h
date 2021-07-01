//
//文件名: LBJTableViewHeaderFooterView.h
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBJTableViewHeaderFooterViewVM : NSObject




@end


@interface LBJTableViewHeaderFooterView : UITableViewHeaderFooterView

@property (nonatomic,strong) LBJTableViewHeaderFooterViewVM * viewModel;


@end

NS_ASSUME_NONNULL_END
