//
//  UIView+CornerView.h
//  corner
//
//  Created by 杨毅 on 16/11/25.
//  Copyright © 2016年 杨毅. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef NS_ENUM(NSInteger) {
    CornerViewTypeNormal,  // 正常
    CornerViewTypeAll,     // 全部
    CornerViewTypeTop,     // 上部
    CornerViewTypeDown,    // 下部
    CornerViewTypeLeft,    // 左部
    CornerViewTypeRight,   // 右部
    CornerViewTypeTopLeft, // 左上步
    CornerViewTypeTopRight,// 右上部
    CornerViewTypeDownLeft,// 左下部
    CornerViewTypeDownRight,//右下部
    CornerViewTypeTopLeftDownRight, //左上右下
    CornerViewTypeTopRightDownLeft //右上左下
}CornerViewType;



@interface UIView (CornerView)

/*!
 使用本方法请正常设置控件背景颜色  控件的边框颜色就是控件的背景颜色 不需设置
 */
/*!
 普通的切圆角（内部实心）
 @param viewType  切圆角图的类型
 
 @param cornerRadius 圆角度
 */

- (void)setCornerViewWithViewType:(CornerViewType)viewType cornerRadius:(CGFloat)cornerRadius;


/*!
 如果你的控件是设计的边框圆角  请调用完上边的方法之后再调用一下这个方法（内部空心）
 @param viewType  切圆角图的类型
 
 @param borderWidth 边框宽度
 
 @param radius 圆角度数  和上面方法保持一致
 
 @param color  切位空心的之后的圈内的颜色
 */
- (void)setBorderConrnerViewWithViewType:(CornerViewType)viewType borderWidth:(CGFloat)borderWidth radius:(CGFloat)radius color:(UIColor *)color;
@end
