//
//  testClass.m
//  ExampleIOS
//
//  Created by duanefaith on 16/3/22.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#import "testClass.h"

@interface testClass()

@end

@implementation testClass

+(testClass*)sharedInstance
{
    static testClass *sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [testClass new];
    });
    return sharedInstance;
}

-(void)test:(int) x
{
    if (_protocol != nil)
    {
        [_protocol onTest:[[NSString alloc]
                           initWithFormat:@"onTest param = %d",x]];
    }
    NSNotification *notification = [[NSNotification alloc] initWithName:NOTI_CALL_TEST object:self userInfo:nil];
    [[NSNotificationCenter defaultCenter] postNotification: notification];
}

@end
