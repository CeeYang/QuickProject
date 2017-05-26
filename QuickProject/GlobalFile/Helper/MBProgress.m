//
//  UIShowTool.m
//  CloudStudy
//
//  Created by 蓝泰致铭        on 15/1/30.
//  Copyright (c) 2015年 ZXY. All rights reserved.
//

#import "MBProgress.h"
#import "MBProgressHUD+mutiLine.h"


@implementation MBProgress


//定义alertView弹出框
+(void)alert:(NSString*)msg
{
    [self alertWithTitle:@"提示" msg:msg btn:@"确定"];
}


+(void)alertWithTitle:(NSString*)title msg:(NSString*)msg btn:(NSString*)btn
{
    if (kiOS8Later) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:btn
                                                  style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction *action) {
                                                    
                                                }]];
        [AppDelegate.shareInstance.window.rootViewController presentViewController:alert animated:YES completion:nil];
    } else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
}



#pragma mark - MBProgressHUD Method author:houhui
+ (void)showActivityViewInWindowWithText:(NSString *)text {
    [self hide];
    
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:AppDelegate.shareInstance.window];
    [AppDelegate.shareInstance.window addSubview:hud];
    [hud showFitText:text];
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showAnimated:YES];
}

+ (void)showActivityViewInWindowWithText:(NSString*)text interval:(NSTimeInterval)interval{
    [self hide];

    

    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:AppDelegate.shareInstance.window];
    [AppDelegate.shareInstance.window addSubview:hud];
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showFitText:text];
    [hud addTapGesture];
    if ([hud isHidden]) {
        [hud showAnimated:YES];
    }
    [hud hideAnimated:YES afterDelay:interval];
}

+ (void)showNormalLoadingViewInWindowWithText:(NSString *)text {
    
    

    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:AppDelegate.shareInstance.window];
    [AppDelegate.shareInstance.window addSubview:hud];
    
    if (text != nil && ![text isEqualToString:@""]) {
        hud.mode = MBProgressHUDModeText;
        [hud showFitText:text];
        [hud addTapGesture];
        [hud showAnimated:YES];
        [hud hideAnimated:YES afterDelay:delayInterval];
    } else {
        [hud hideAnimated:YES];
    }
}

+ (void)showNormalLoadingViewInWindowWithText:(NSString *)text interval:(NSTimeInterval)interval{
    
    [self hide];

    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:AppDelegate.shareInstance.window];
    [AppDelegate.shareInstance.window addSubview:hud];
    if (text != nil && ![text isEqualToString:@""]) {
        hud.mode = MBProgressHUDModeText;
        [hud showFitText:text];
        [hud addTapGesture];
        [hud showAnimated:YES];
        [hud hideAnimated:YES afterDelay:interval];
    } else {
        [hud hideAnimated:YES];
    }
}

+ (void)hide {
    [UIView animateWithDuration:0.5 animations:^{
        [MBProgressHUD hideHUDForView:AppDelegate.shareInstance.window animated:true];
    }];
}


+ (void)showActivityViewInTargetView:(UIView *)view
                                text:(NSString *)text
                            interval:(NSTimeInterval)interval {
    

    [self hideInView:view];
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:hud];
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showFitText:text];
    [hud addTapGesture];
    if ([hud isHidden]) {
        [hud showAnimated:YES];
    }
    [hud hideAnimated:YES afterDelay:interval];
}


+ (void)showActivityViewInView:(UIView*)view text:(NSString *)text{
    
    

    [self hideInView:view];
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:hud];
    [hud showFitText:text];
    hud.mode = MBProgressHUDModeIndeterminate;
    [hud showAnimated:YES];
}


+ (void)showNormalLoadingViewInView:(UIView*)view
                             text:(NSString *)text
                         interval:(NSTimeInterval)interval{
    

    [self hideInView:view];
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    [view addSubview:hud];
    if (text != nil && ![text isEqualToString:@""]) {
        hud.mode = MBProgressHUDModeText;
        [hud showFitText:text];
        [hud addTapGesture];
        [hud showAnimated:YES];
        [hud hideAnimated:YES afterDelay:interval];
    }else {
        [hud hideAnimated:YES];
    }
}

+ (void)hideInView:(UIView*)view {
    
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

@end
