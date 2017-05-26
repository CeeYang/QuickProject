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
    
    YYLabel *welcomeLabel = [YYLabel new];
    welcomeLabel.text = @"Welcom to QuickProject Demo,\n You can use the demo do what you wanna do ";
    welcomeLabel.numberOfLines = 0;
    welcomeLabel.textAlignment = NSTextAlignmentCenter;
    welcomeLabel.textVerticalAlignment = YYTextVerticalAlignmentCenter;
    [self.view addSubview: welcomeLabel];
    [welcomeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
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
