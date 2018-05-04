//
//  QuickSort.h
//  C_quickSort
//
//  Created by 唯赢 on 2018/5/4.
//  Copyright © 2018年 李立. All rights reserved.
//

#ifndef QuickSort_h
#define QuickSort_h

#include <stdio.h>


int *sort(int *pList, int count);

void quickSort(int *pList, int count, int leftIndex, int rightIndex);

void swapAt(int i, int j, int *pList);

void showList(int *pList, int count);

#endif /* QuickSort_h */
