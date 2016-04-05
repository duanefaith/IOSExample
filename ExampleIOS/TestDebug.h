//
//  TestDebug.h
//  ExampleIOS
//
//  Created by duanefaith on 16/3/30.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#ifndef TestDebug_h
#define TestDebug_h

#ifdef LOG
#undef LOG
#endif

#ifdef DEBUG
#define LOG(...) NSLog(__VA_ARGS__)
#else
#define LOG(...)
#endif

#endif /* TestDebug_h */
