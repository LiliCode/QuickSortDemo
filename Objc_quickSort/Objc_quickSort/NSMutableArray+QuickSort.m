//
//  NSMutableArray+QuickSort.m
//  Objc_quickSort
//
//  Created by 唯赢 on 2018/5/4.
//  Copyright © 2018年 李立. All rights reserved.
//

#import "NSMutableArray+QuickSort.h"

@implementation NSMutableArray (QuickSort)

- (void)sort {
    if (!self.count) {
        return;
    }
    
    [self quickSortWithLeftIndex:0 rightIndex:self.count - 1];
}

- (void)quickSortWithLeftIndex:(NSInteger)leftIndex rightIndex:(NSInteger)rightIndex {
    if (leftIndex >= rightIndex || self.count <= 1) {
        return;
    }
    
    NSInteger i = leftIndex, j = rightIndex;
    NSInteger baseValue = [[self objectAtIndex:leftIndex] integerValue];
    while (i < j) {
        BOOL iSwapFlag = NO, jSwapFlag = NO;
        while (i < j) {
            if ([[self objectAtIndex:j] integerValue] < baseValue) {
                jSwapFlag = YES;
                break;
            }
            
            j--;
        }
        
        while (i < j) {
            if ([[self objectAtIndex:i] integerValue] > baseValue) {
                iSwapFlag = YES;
                break;
            }
            
            i++;
        }
        
        if (iSwapFlag && jSwapFlag) {
            [self swapAt:i j:j];
        }
    }
    
    if (i == j) {
        [self swapAt:leftIndex j:j];
    }
    
    // 分块排序
    [self quickSortWithLeftIndex:leftIndex rightIndex:i];       // 左
    [self quickSortWithLeftIndex:i + 1 rightIndex:rightIndex];  // 右
}

- (void)swapAt:(NSInteger)i j:(NSInteger)j {
    id temp = [self objectAtIndex:i];
    [self replaceObjectAtIndex:i withObject:[self objectAtIndex:j]];
    [self replaceObjectAtIndex:j withObject:temp];
}

@end






