//
//  BDExtends.m
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import "BDExtends.h"
#import <objc/runtime.h>

@interface BDExtends ()

@property (nonatomic, strong) NSDictionary *methodList;

@end

@implementation BDExtends

- (instancetype)initExtends:(NSArray<NSString *> *)extends
{
    NSMutableDictionary *tempMethodList = @{}.mutableCopy;
    
    [extends enumerateObjectsUsingBlock:^(NSString *_Nonnull objString, NSUInteger idx, BOOL * _Nonnull stop) {
        
        Class objClass = NSClassFromString(objString);
    
        NSString *des = [NSString stringWithFormat:@"can not find the class of %@", objString];
        NSAssert(objString != nil, des);
        
        
        id obj = [[objClass alloc] init];
        
        unsigned int numberOfMethods = 0;

        Method *methodList = class_copyMethodList(objClass, &numberOfMethods);
        
        for (int i = 0 ; i < numberOfMethods; i++) {
            
            Method tempMethod = methodList[i];
            
            SEL tempSel = method_getName(tempMethod);
            
            const char *tempMethodName = sel_getName(tempSel);
            
            [tempMethodList setObject:obj forKey:[NSString stringWithUTF8String:tempMethodName]];
    
        }
        
    }];
    
    self.methodList = [[NSDictionary alloc] initWithDictionary:tempMethodList copyItems:NO];
    
    return self;
}

- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSString *methodName = NSStringFromSelector(sel);
    
    id target = [self.methodList valueForKey:methodName];
    
    if (target && [target respondsToSelector:sel])
    {
        return [target methodSignatureForSelector:sel];
    }
    else
    {
        return [super methodSignatureForSelector:sel];
    }
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    SEL sel = invocation.selector;
    
    NSString *methodName = NSStringFromSelector(sel);
    
    id target = [self.methodList valueForKey:methodName];
    
    if (target && [target respondsToSelector:sel]) {
        
//        [invocation invoke];
        
        [invocation invokeWithTarget:target];
    }
    else
    {
        [super forwardInvocation:invocation];
    }
}



@end
