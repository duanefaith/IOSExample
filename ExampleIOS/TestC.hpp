//
//  TestC.hpp
//  ExampleIOS
//
//  Created by duanefaith on 16/3/22.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#ifndef TestC_hpp
#define TestC_hpp

#include <stdio.h>

class TestC {
private:
    size_t _size;
public:
    TestC();
    ~TestC();
    void setObj(void* objs);
    size_t getSize();
};

#endif /* TestC_hpp */
