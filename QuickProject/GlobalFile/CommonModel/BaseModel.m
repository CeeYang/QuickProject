//
//  BaseModel.m
//  CloudStudyPeiban
//
//  Created by 蓝泰致铭 on 16/5/4.
//  Copyright © 2016年 netschina. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"did":@"id"};
}

- (void)parseDataInDictionary:(NSDictionary *)dictionary {
    
    NSArray * keys = [dictionary allKeys];
    for(NSString * paramsValue in keys) {
        //首字母大写
        NSString * firstStr = [[paramsValue substringToIndex:1] capitalizedString];
        NSString * lastStr  = [paramsValue substringFromIndex:1];
        NSString * capStr   = [NSString stringWithFormat:@"%@%@",firstStr,lastStr];
        
        //是否存在此属性
        NSString * legalStr = [NSString stringWithFormat:@"set%@:",capStr];
        SEL selector = NSSelectorFromString(legalStr);
        if([self respondsToSelector:selector]) {
            //执行set方法
            NSObject * dicValue = [dictionary objectForKey:paramsValue];
            if([dicValue isKindOfClass:[NSNull class]]) {
                dicValue = @"";
            }
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:selector withObject:dicValue];
#pragma clang diagnostic pop
        }
    }
}

@end
