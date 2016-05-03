//
//  InterfaceController.m
//  WatchApp Extension
//
//  Created by bianyixuan on 16/4/28.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.labelTest setTextColor:[UIColor redColor]];
    

    // Configure interface objects here.
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



