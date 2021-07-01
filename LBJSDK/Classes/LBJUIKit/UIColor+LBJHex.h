//
//文件名: UIColor+LBJHex.h
//项目名: LBJSDK
//创建者: admin
//描述:
//修改时间:   2021/7/1
//
    

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (LBJHex)

+(UIColor *)lbj_RandomColor;


+ (UIColor *)lbj_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
+ (UIColor *)lbj_colorWithHexString:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
