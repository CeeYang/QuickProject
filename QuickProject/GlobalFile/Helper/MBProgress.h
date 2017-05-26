//
//  UIShowTool.h
//  CloudStudy
//
//  Created by 蓝泰致铭        on 15/1/30.
//  Copyright (c) 2015年 ZXY. All rights reserved.
//

#import <Foundation/Foundation.h>

#define delayInterval 1.5

@interface MBProgress : NSObject

/**
 *  弹出alert
 *
 *  @param msg 消息内容
 */
+(void)alert:(NSString*)msg;

/**
 *  弹出alert
 *
 *  @param title 标题
 *  @param msg   消息内容
 *  @param btn   按钮文本
 */
+ (void)alertWithTitle:(NSString*)title msg:(NSString*)msg btn:(NSString*)btn;

/**
 *  持续显示的提示框在window上
 *
 *  @param text 显示的文本
 */
+ (void)showActivityViewInWindowWithText:(NSString *)text;

/**
 *  显示带时限的等待进度提示框在window上
 *
 *  @param text 显示的文本
 *  @param time 显示时间
 */
+ (void)showActivityViewInWindowWithText:(NSString*)text interval:(NSTimeInterval)interval;


/**
 *
 *显示内容在window上,默认显示1.5s
 *
 */
+ (void)showNormalLoadingViewInWindowWithText:(NSString *)text;

/**
 *  显示普通的文字提示框在window上
 *
 *  @param text 显示的文本
 *  @param time 显示时间
 */
+ (void)showNormalLoadingViewInWindowWithText:(NSString *)text interval:(NSTimeInterval)interval;


/**
 *  隐藏window上所有提示框
 */
+ (void)hide;

/**
 *  显示带时限的等待进度提示框
 *
 *  @param view - 要显示到的view
 *  @param text - 显示的文本
 *  @param time - 显示时间
 */

+ (void)showActivityViewInTargetView:(UIView *)view
                                text:(NSString *)text
                            interval:(NSTimeInterval)interval;

/**
 *  持续显示的提示框
 *
 *  @param view - 要显示到的view
 *  @param text - 显示的文本
 */
+ (void)showActivityViewInView:(UIView*)view text:(NSString *)text;

/**
 *  显示普通的文字提示框
 *
 *  @param view 要显示到的view
 *  @param text 显示的文本
 *  @param time 显示时间
 */
+ (void)showNormalLoadingViewInView:(UIView*)view
                               text:(NSString *)text
                           interval:(NSTimeInterval)interval;

/**
 *  隐藏view上所有提示框
 *
 *  @param view 要显示到的view
 */
+ (void)hideInView:(UIView*)view;


@end
