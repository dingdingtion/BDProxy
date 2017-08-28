//
//  RequestHandle.m
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import "RequestHandle.h"

@implementation RequestHandle

+ (instancetype)ShareHandle
{
    static RequestHandle *handle = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        handle = [[RequestHandle alloc] init];
        
    });
    
    
    return handle;
}

- (void)doLoginSucess
{
    
    if (self.errorHandle) {
        
        [self.errorHandle invoke];
        
    }
}


@end
