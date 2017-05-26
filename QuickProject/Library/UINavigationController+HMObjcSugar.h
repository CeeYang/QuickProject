//
//  UINavigationController+HMObjcSugar.h
//  QuickProject
//
//  Created by smile on 2017/3/19.
//  Copyright © 2017年 smile. All rights reserved.
//

/** 
 * 自定义全屏拖拽返回手势
 * 解决自定义返回按钮后,返回手势失效的问题
 *
 */

#import <UIKit/UIKit.h>

@interface UINavigationController (HMObjcSugar)

/// 自定义全屏拖拽返回手势
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *hm_popGestureRecognizer;

@end
