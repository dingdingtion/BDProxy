//
//  ViewController.m
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import "ViewController.h"
#import "BDExtends.h"
#import "RequestHandle.h"
#import "LoginViewController.h"

@interface ViewController ()
{
    
    NSMutableDictionary *dic;
}

@property (nonatomic, strong) NSInvocation *tempInvo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BDExtends *extends = [[BDExtends alloc] initExtends:@[@"Person", @"Machine"]];
    
    extends.name = @"111";
    extends.machineId = @"NO.123";
    
    NSLog(@"%@", extends.name);
    NSLog(@"%@", extends.machineId);
    NSLog(@"%@", [extends getPersonInfo]);
    
    [extends driveCarToCity:@"shanghai"];

    
    
    
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    
//    btn.titleLabel.text = @"用户信息";
//    
//    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    btn.backgroundColor = [UIColor blackColor];
//    
//    btn.frame = CGRectMake(0, 80, 100, 49);
//    
//    [self.view addSubview:btn];
//    
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

//
//- (void)btnClick
//{
//    SEL sel = @selector(getUserInfo:);
//    
//    NSMethodSignature  *signature = [ViewController instanceMethodSignatureForSelector:sel];
//    
//    NSInvocation *invo = [NSInvocation invocationWithMethodSignature:signature];
//    
//    invo.selector = sel;
//    invo.target   = self;
//    
//    [invo setArgument:@"222" atIndex:2];
//    
//    [RequestHandle ShareHandle].errorHandle = invo;
//    
//    [invo invoke];
//}
//
//- (void)getUserInfo:(NSString *)name
//{
//    sleep(2);
//    
//    LoginViewController *loginVC = [[LoginViewController alloc] init];
//    
//    [self presentViewController:loginVC animated:YES completion:nil];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
