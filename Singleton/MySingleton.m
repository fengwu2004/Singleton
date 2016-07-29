//
//  MySingleton.m
//  Singleton
//
//  Created by ky on 16/7/29.
//  Copyright © 2016年 yellfun. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton *_instance = nil;

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        if (_instance == nil) {
            
            _instance = [[super allocWithZone:NULL] init];
        }
    });
    
    return _instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    
    return [self sharedInstance];
}

@end
