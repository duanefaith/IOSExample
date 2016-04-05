//
//  TestC.cpp
//  ExampleIOS
//
//  Created by duanefaith on 16/3/22.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#include "TestC.hpp"
#include "string"

TestC::TestC()
{
    
}

TestC::~TestC()
{
    
}

void TestC::setObj(void* objs)
{
    if (!objs)
    {
        return;
    }
    _size = sizeof(objs);
}

size_t TestC::getSize()
{
    return _size;
}