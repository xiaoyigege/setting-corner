//
//  UIView+CornerView.m
//  corner
//
//  Created by 杨毅 on 16/11/25.
//  Copyright © 2016年 杨毅. All rights reserved.
//

#import "UIView+CornerView.h"

@implementation UIView (CornerView)
- (void)setCornerViewWithViewType:(CornerViewType)viewType cornerRadius:(CGFloat)cornerRadius{
    switch (viewType) {
        case CornerViewTypeNormal:{
                       break;
        }
        case CornerViewTypeAll:{
            [self setCornerViewType1:UIRectCornerAllCorners type2:UIRectCornerAllCorners cornerRadius:cornerRadius];

            break;
        }
        case CornerViewTypeTop:{
            [self setCornerViewType1:UIRectCornerTopLeft type2:UIRectCornerTopRight cornerRadius:cornerRadius];

            break;
        }
        case CornerViewTypeDown:{
            [self setCornerViewType1:UIRectCornerBottomLeft type2:UIRectCornerBottomRight cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeLeft:{
             [self setCornerViewType1:UIRectCornerBottomLeft type2:UIRectCornerTopLeft cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeRight:{
             [self setCornerViewType1:UIRectCornerTopRight type2:UIRectCornerBottomRight cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeTopLeft:{
             [self setCornerViewType1:UIRectCornerTopLeft type2:UIRectCornerTopLeft cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeTopRight:{
             [self setCornerViewType1:UIRectCornerTopRight type2:UIRectCornerTopRight cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeDownLeft:{
             [self setCornerViewType1:UIRectCornerBottomLeft type2:UIRectCornerBottomLeft cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeDownRight:{
             [self setCornerViewType1:UIRectCornerBottomRight type2:UIRectCornerBottomRight cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeTopLeftDownRight:{
            [self setCornerViewType1:UIRectCornerTopLeft type2:UIRectCornerBottomRight cornerRadius:cornerRadius];
            break;
        }
        case CornerViewTypeTopRightDownLeft :{
            [self setCornerViewType1:UIRectCornerTopRight type2:UIRectCornerBottomLeft cornerRadius:cornerRadius];
            break;
        }
        default:
            break;
    }
}

- (void)setBorderConrnerViewWithViewType:(CornerViewType)viewType borderWidth:(CGFloat)borderWidth radius:(CGFloat)radius color:(UIColor *)color{
    
    switch (viewType) {
        case CornerViewTypeNormal:{
            break;
        }
        case CornerViewTypeAll:{
             [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerAllCorners type2:UIRectCornerAllCorners color:color];
            break;
        }
        case CornerViewTypeTop:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopLeft type2:UIRectCornerTopRight color:color];
            break;
        }
        case CornerViewTypeDown:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerBottomLeft type2:UIRectCornerBottomRight color:color];

            break;
        }
        case CornerViewTypeLeft:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerBottomLeft type2:UIRectCornerTopLeft color:color];

            break;
        }
        case CornerViewTypeRight:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopRight type2:UIRectCornerBottomRight color:color];
            break;
        }
        case CornerViewTypeTopLeft:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopLeft type2:UIRectCornerTopLeft color:color];

            break;
        }
        case CornerViewTypeTopRight:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopRight type2:UIRectCornerTopRight color:color];

            break;
        }
        case CornerViewTypeDownLeft:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerBottomLeft type2:UIRectCornerBottomLeft color:color];

            break;
        }
        case CornerViewTypeDownRight:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerBottomRight type2:UIRectCornerBottomRight color:color];

            break;
        }
        case CornerViewTypeTopLeftDownRight:{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopLeft type2:UIRectCornerBottomRight color:color];

            break;
        }
        case CornerViewTypeTopRightDownLeft :{
            [self setBorderConrnerViewWithBorderWidth:borderWidth cornerRadius:radius type1:UIRectCornerTopRight type2:UIRectCornerBottomLeft color:color];

            break;
        }
        default:
            break;
    }

    
}
-(void)setBorderConrnerViewWithBorderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius type1:(UIRectCorner)rectCorner1 type2:(UIRectCorner)rectCorner2 color:(UIColor *)color{
    CALayer * temp = [CALayer layer];
    [temp setBackgroundColor:color.CGColor];
    temp.frame = CGRectMake(borderWidth, borderWidth, self.bounds.size.width - borderWidth * 2, self.bounds.size.height - borderWidth * 2);
    UIBezierPath * subPath = [UIBezierPath bezierPathWithRoundedRect:temp.bounds byRoundingCorners:rectCorner1|rectCorner2 cornerRadii:CGSizeMake(cornerRadius - borderWidth, cornerRadius - borderWidth)];
    CAShapeLayer * subMask= [[CAShapeLayer alloc] initWithLayer:temp];
    subMask.path = subPath.CGPath;
    temp.mask = subMask;
    [self.layer addSublayer:temp];
}

-(void)setCornerViewType1:(UIRectCorner)rectCorner1 type2:(UIRectCorner)rectCorner2 cornerRadius:(CGFloat)cornerRadius{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner1 | rectCorner2 cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}
@end
