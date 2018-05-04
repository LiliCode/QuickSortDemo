//
//  main.m
//  Objc_quickSort
//
//  Created by 唯赢 on 2018/5/4.
//  Copyright © 2018年 李立. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+QuickSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *list = [[NSMutableArray alloc] initWithObjects:@(51), @(15), @(8), @(23), @(54), @(23), @(19), @(30), nil];
        [list sort];    // 排序
        NSLog(@"%@", list);
    }
    
    return 0;
}
