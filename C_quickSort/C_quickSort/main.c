//
//  main.c
//  C_quickSort
//
//  Created by 唯赢 on 2018/5/4.
//  Copyright © 2018年 李立. All rights reserved.
//

#include <stdio.h>
#include "QuickSort.h"

int main(int argc, const char * argv[]) {
    // 列表
    int list[] = {24, 79, 67, 34, 53, 20, 39, 80, 59};
    showList(list, sizeof(list) / sizeof(int));
    // 排序
    sort(list, sizeof(list) / sizeof(int));
    // 输出
    showList(list, sizeof(list) / sizeof(int));
    
    return 0;
}


