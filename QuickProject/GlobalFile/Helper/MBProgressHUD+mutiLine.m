//
//  MBProgressHUD+mutiLine.m
//  CloudStudy
//
//  Created by 蓝泰致铭        on 15/4/27.
//  Copyright (c) 2015年 蓝泰致铭. All rights reserved.
//

#import "MBProgressHUD+mutiLine.h"

@implementation MBProgressHUD (mutiLine)

-(void)showFitText:(NSString*)text {
    
    CGFloat maxWidth = self.bounds.size.width - 4 * self.margin;
    CGSize size = [text sizeWithFont:self.labelFont constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)];
    if (size.height > self.labelFont.lineHeight) {
    
        self.detailsLabelText = text;
    }else{
        self.labelText = text;
    }
}

-(void)addTapGesture{
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideMBProgressHub)];
    [self addGestureRecognizer:tap];
}

-(void)hideMBProgressHub{
    
    [self hide:YES];
}

@end
