//
//  ViewController.m
//  WatchTest
//
//  Created by bianyixuan on 16/4/28.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "ViewController.h"
#import <WatchConnectivity/WatchConnectivity.h>
@interface ViewController ()<UITextFieldDelegate,WCSessionDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, 100, 24)];
    textField.placeholder = @"请输入内容 在bitch上显示";
    textField.delegate = self;
    [self.view addSubview:textField];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [[WCSession defaultSession] setDelegate:self];
        [[WCSession defaultSession] activateSession];
        NSDictionary *infoDic = @{@"title":textField.text};
        [[WCSession defaultSession] transferCurrentComplicationUserInfo:infoDic];
    });
    
   
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
//    [[WCSession defaultSession] setDelegate:self];
//    [[WCSession defaultSession] activateSession];
//    NSDictionary *infoDic = @{@"title":textField.text};
//    [[WCSession defaultSession] transferCurrentComplicationUserInfo:infoDic];
//    [self.view endEditing:YES];
    return YES;
}

#pragma mark - WCSessionDelegate
- (void)session:(WCSession *)session didFinishUserInfoTransfer:(WCSessionUserInfoTransfer *)userInfoTransfer error:(NSError *)error {
    NSLog(@"%@",error);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
