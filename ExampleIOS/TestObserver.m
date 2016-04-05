//
//  TestObserver.m
//  ExampleIOS
//
//  Created by duanefaith on 16/3/30.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#import "TestObserver.h"

@implementation TestObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    LOG(@"key path %@ of obj %@ changed %@, context = %@", keyPath, object, change, context);
}

@end
