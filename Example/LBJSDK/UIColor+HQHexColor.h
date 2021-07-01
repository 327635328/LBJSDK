//
//  UIColor+HQHexColor.h
//  TaPinCaiXiaoAPP
//
//  Created by admin on 2021/3/12.
//  Copyright © 2021 iCash. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define RGB(r,g,b) [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:1.]

@interface UIColor (HQHexColor)

+ (UIColor *)hexFloatColor:(NSString *)hexStr;
+ (UIColor *)hexFloatColor:(NSString *)color alpha:(CGFloat)alpha;


+ (UIColor *)colorBy333333;
+ (UIColor *)colorBy999999;
+ (UIColor *)colorBy8E47A0;
+ (UIColor *)colorBy666666;
///灰色 (一般用于底线或者背景色)
+ (UIColor *)colorByE7E7E7;

///随机颜色
+ (UIColor *)randomColor;



@end

NS_ASSUME_NONNULL_END
