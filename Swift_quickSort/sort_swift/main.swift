//
//  main.swift
//  sort_swift
//
//  Created by 唯赢 on 2018/5/3.
//  Copyright © 2018年 李立. All rights reserved.
//

import Foundation

var list: [Int] = [45, 32, 98, 56, 9, 35, 13, 88]
var swapCount = 0   // 交换次数

func sort(list: inout Array<Int>) -> Array<Int>? {
    guard !list.isEmpty else {
        return nil
    }
    
    // 快排
    quickSort(list: &list, iIndex: 0, jIndex: list.count - 1)
    
    return list
}

func quickSort(list: inout [Int], iIndex: Int, jIndex: Int) -> Void {
    if iIndex >= jIndex || list.count <= 1 {
        return  // 递归结束条件
    }
    
    let baseValue = list[iIndex]
    var i = iIndex, j = jIndex
    while i < j {
        var iSwapFlag = false, jSwapFlag = false
        // 先让j哨兵先走
        while i < j {
            if list[j] < baseValue {
                iSwapFlag = true
                break   // 找到比基准数小的数
            }
            
            j -= 1
        }
        // i哨兵移动
        while i < j {
            if list[i] > baseValue {
                jSwapFlag = true
                break   // 找到比基准数大的数
            }
            
            i += 1
        }
        
        if iSwapFlag && jSwapFlag {
            list.swapAt(i, j)   // 交换两个数
            
            swapCount += 1
            print("第\(swapCount)次交换")
        }
    }
    
    if i == j { // 两个哨兵相遇了，把相遇的数和基准数交换位置
        list.swapAt(iIndex, i)
    }
    
//    print("排序过程： i = \(iIndex) j = \(jIndex)")
    
    quickSort(list: &list, iIndex: iIndex, jIndex: i)    // 左
    quickSort(list: &list, iIndex: i + 1, jIndex: jIndex) // 右
}

func compre(_ x: Int, _ y: Int) -> Bool {
    return x > y
}

print(list)
// 开始排序
if let newList = sort(list: &list) {
    print(newList)
} else {
    print("排序失败")
}

