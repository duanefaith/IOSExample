//
//  testClass+New.m
//  ExampleIOS
//
//  Created by duanefaith on 16/4/1.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#import "testClass+New.h"

@implementation testClass (New)

-(void)test:(int) x
{
    if (self.protocol != nil)
    {
        [self.protocol onTest:[[NSString alloc]
                           initWithFormat:@"onTest cat:new param = %d",x]];
    }
    NSNotification *notification = [[NSNotification alloc] initWithName:NOTI_CALL_TEST object:self userInfo:nil];
    [[NSNotificationCenter defaultCenter] postNotification: notification];
}

@end
