//
//  QuickSort.c
//  C_quickSort
//
//  Created by 唯赢 on 2018/5/4.
//  Copyright © 2018年 李立. All rights reserved.
//

#include "QuickSort.h"
#include <stdbool.h>

int *sort(int *pList, int count) {
    if (!pList) {
        return NULL;
    }
    
    if (!count) {
        return NULL;
    }
    // 快排
    quickSort(pList, count, 0, count - 1);
    
    return pList;
}

void quickSort(int *pList, int count, int leftIndex, int rightIndex) {
    if (leftIndex >= rightIndex || count <= 1) {
        return;
    }
    
    int i = leftIndex, j = rightIndex;          // 左右哨兵
    int baseValue = *(pList + leftIndex);       // 基准值
    while (i < j) {
        bool iSwapFlag = false, jSwapFlag = false;
        while (i < j) {
            if (*(pList + j) < baseValue) {
                iSwapFlag = true;
                break;
            }
            
            j--;
        }
        
        while (i < j) {
            if (*(pList + i) > baseValue) {
                jSwapFlag = true;
                break;
            }
            
            i++;
        }
        
        if (iSwapFlag && jSwapFlag) {
            swapAt(i, j, pList);
        }
    }
    
    if (i == j) {   // 哨兵相遇
        swapAt(leftIndex, i, pList);    // 和基准值交换
    }
    
    // 以baseValue为基准，左边都是小于baseValue，右边都是大于baseValue
    // 然后利用递归进行左右排序
    quickSort(pList, i - leftIndex, leftIndex, i);  // 左
    quickSort(pList, rightIndex - i, i + 1, rightIndex);    // 右
}

void swapAt(int i, int j, int *pList) {
    if (!pList) {
        return;
    }
    
    int temp = *(pList + i);
    *(pList + i) = *(pList + j);
    *(pList + j) = temp;
}

void showList(int *pList, int count) {
    printf("[");
    for (int i = 0; i < count; i++) {
        printf("%d", pList[i]);
        if (i < count - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}






