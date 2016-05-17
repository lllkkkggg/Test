//
//  KeyChainStore.h
//  kidneyUser
//
//  Created by 开发2 on 16/4/13.
//  Copyright © 2016年 开发3-lyp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChainStore : NSObject
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;
@end
