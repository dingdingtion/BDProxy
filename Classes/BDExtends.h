//
//  BDExtends.h
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Machine.h"


@interface BDExtends : NSProxy<PersonPtotocol, MachinePtotocol>

- (instancetype)initExtends:(NSArray<NSString *> *)extends;

@end
