//
//  Person.h
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonPtotocol <NSObject>

@property (nonatomic, copy) NSString *name;

- (NSString *)getPersonInfo;

@end


@interface Person : NSObject<PersonPtotocol>

@end
