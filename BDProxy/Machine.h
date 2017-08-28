//
//  Machine.h
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MachinePtotocol <NSObject>

@property (nonatomic, copy) NSString *machineId;

- (void)driveCarToCity:(NSString *)cityName;

@end

@interface Machine : NSObject<MachinePtotocol>

@end
