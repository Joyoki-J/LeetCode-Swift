//
//  a338_比特位计数.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/3.
//

import Foundation

/*
 给定一个非负整数 num。对于 0 ≤ i ≤ num 范围中的每个数字 i ，计算其二进制数中的 1 的数目并将它们作为数组返回。
 
 示例 1:
 输入: 2
 输出: [0,1,1]
 
 示例 2:
 输入: 5
 输出: [0,1,1,2,1,2]
 */

func countBits(_ num: Int) -> [Int] {
    guard num > 0 else { return [0] }
    var ans = [Int](repeating: 0, count: num+1)
    for i in 1 ... num {
        ans[i] = ans[i & (i - 1)] + 1
    }
    return ans
}
