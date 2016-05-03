//
//  GlanceController.m
//  WatchTest
//
//  Created by bianyixuan on 16/4/29.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "GlanceController.h"

@interface GlanceController ()

@end

@implementation GlanceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSLog(@"willActivate");
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

-(void)updateUserActivity:(NSString *)type userInfo:(NSDictionary *)userInfo webpageURL:(NSURL *)webpageURL
{
    NSLog(@"type%@",type);

    
}




@end



