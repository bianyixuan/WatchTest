//
//  ShowWhatController.m
//  WatchTest
//
//  Created by Mac on 16/6/14.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "ShowWhatController.h"
#import <WatchConnectivity/WatchConnectivity.h>
@interface ShowWhatController ()<WCSessionDelegate>
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *label_Show;

@end

@implementation ShowWhatController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [[WCSession defaultSession] setDelegate:self];
    [[WCSession defaultSession] activateSession];
    //[self.label_Show setText:[modelFortest instance].message];
    // Configure interface objects here.
}

#pragma mark - WCSessionDelegate
- (void)session:(WCSession *)session didReceiveUserInfo:(NSDictionary<NSString *,id> *)userInfo {
   
    NSLog(@"接受到数据%@",userInfo);
    [self.label_Show setText:[userInfo objectForKey:@"title"]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



