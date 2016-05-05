//
//  AnimationViewController.m
//  WatchTest
//
//  Created by 于建祥 on 16/5/5.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationViewController ()

@end

@implementation AnimationViewController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.animationImage setImageNamed:@"1_"];
    [self.animationImage startAnimatingWithImagesInRange:NSMakeRange(1, 31) duration:5 repeatCount:-1];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)start_animation
{
    [self.animationImage startAnimating];
}

- (IBAction)stop_animation
{
    [self.animationImage stopAnimating];
}
@end



