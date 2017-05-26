//
//  ViewController.m
//  QuickProject
//
//  Created by smile on 2017/3/19.
//  Copyright © 2017年 smile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton new];
    [btn setTitle:@"Click Me" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    btn.layer.cornerRadius = 10;
    btn.layer.masksToBounds = true;
    [btn addTarget:self action:@selector(btnButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_greaterThanOrEqualTo(60);
        make.height.mas_equalTo(44);
        make.center.mas_equalTo(self.view);
    }];
    
}

- (void)btnButtonAction
{
    [MBProgress showNormalLoadingViewInWindowWithText:@"Btn clicked"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
