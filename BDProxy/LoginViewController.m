//
//  LoginViewController.m
//  BDProxy
//
//  Created by DingDing on 17/8/285.
//  Copyright © 2017年 BeidouLife. All rights reserved.
//

#import "LoginViewController.h"
#import "RequestHandle.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
        
        [[RequestHandle ShareHandle] doLoginSucess];

    }];
    
}

@end
