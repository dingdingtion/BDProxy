//
//  RequestHandle.h
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RequestHandle : NSObject

@property (nonatomic, strong) NSInvocation *errorHandle;

+ (instancetype)ShareHandle;

- (void)doLoginSucess;

@end
