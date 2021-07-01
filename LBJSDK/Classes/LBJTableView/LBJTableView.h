//
//文件名: LBJTableView.h
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN




@interface LBJTableView : UITableView

@property (nonatomic,retain) NSMutableArray * _Nullable formItems;
@property (nonatomic,copy) void(^didScrollBlock)(UIScrollView *);

-(void)reloadData;

/** 注册cell用 */
@property (nonatomic, strong, nullable) NSDictionary<NSString *, Class> *registerClassDictionary;

@end

NS_ASSUME_NONNULL_END
