//
//  AnimationViewController.h
//  WatchTest
//
//  Created by 于建祥 on 16/5/5.
//  Copyright © 2016年 jzsec-byx. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface AnimationViewController : WKInterfaceController

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *animationImage;

- (IBAction)start_animation;
- (IBAction)stop_animation;

@end
