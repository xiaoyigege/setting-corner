//
//  ViewController.m
//  corner
//
//  Created by 杨毅 on 16/11/25.
//  Copyright © 2016年 杨毅. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CornerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * bt = [UIButton buttonWithType:(UIButtonTypeCustom)];
    
    bt.frame = CGRectMake(100, 100, 100, 100);
    bt.backgroundColor = [UIColor redColor];
    bt.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:bt];
    [bt setCornerViewWithViewType:(CornerViewTypeAll) cornerRadius:50];
    [bt setBorderConrnerViewWithViewType:(CornerViewTypeAll) borderWidth:3 radius:50 color:[UIColor whiteColor]];
    
    }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
