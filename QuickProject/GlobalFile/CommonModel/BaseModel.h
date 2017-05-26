//
//  BaseModel.h
//  CloudStudyPeiban
//
//  Created by 蓝泰致铭 on 16/5/4.
//  Copyright © 2016年 netschina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

//愿数据为字典，执行set方法
- (void)parseDataInDictionary:(NSDictionary *)dictionary;

@end
