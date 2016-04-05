//
//  testClass.h
//  ExampleIOS
//
//  Created by duanefaith on 16/3/22.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#ifndef testClass_h
#define testClass_h

#import <Foundation/Foundation.h>
#define NOTI_CALL_TEST @"call_test"

@protocol testProtocol

@required -(void) onTest:(NSString *)str;

@end

@interface testClass : NSObject

@property (atomic) long long arg1;
@property (strong, atomic) id<testProtocol> protocol;
@property (strong, nonatomic) NSString *str;
+(testClass*)sharedInstance;
-(void)test:(int) x;
@end

#endif /* testClass_h */
