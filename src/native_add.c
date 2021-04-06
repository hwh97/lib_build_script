//
//  native_add.c
//  
//
//  Created by weihong huang on 2021/4/1.
//
#include <stdio.h>
 

int addInt(int a, int b);

int main(void)
{
    int result = addInt(10, 5);
    printf("%d", result);
    return 0;
}

int addInt(int a, int b) {
    int result = a + b;
    return result;
}
