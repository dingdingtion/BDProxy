//
//  Person.m
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name;

- (NSString *)getPersonInfo
{
    return [NSString stringWithFormat:@"person name: %@", _name];
}

@end
