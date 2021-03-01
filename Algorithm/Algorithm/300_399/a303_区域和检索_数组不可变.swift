//
//  a303_区域和检索_数组不可变.swift
//  Algorithm
//
//  Created by joyoki on 2021/3/1.
//

import Foundation

/*
 给定一个整数数组  nums，求出数组从索引 i 到 j（i ≤ j）范围内元素的总和，包含 i、j 两点。
 实现 NumArray 类：
 NumArray(int[] nums) 使用数组 nums 初始化对象
 int sumRange(int i, int j) 返回数组 nums 从索引 i 到 j（i ≤ j）范围内元素的总和，包含 i、j 两点（也就是 sum(nums[i], nums[i + 1], ... , nums[j])）

 示例：

 输入：
 ["NumArray", "sumRange", "sumRange", "sumRange"]
 [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]
 输出：
 [null, 1, -1, -3]

 解释：
 NumArray numArray = new NumArray([-2, 0, 3, -5, 2, -1]);
 numArray.sumRange(0, 2); // return 1 ((-2) + 0 + 3)
 numArray.sumRange(2, 5); // return -1 (3 + (-5) + 2 + (-1))
 numArray.sumRange(0, 5); // return -3 ((-2) + 0 + 3 + (-5) + 2 + (-1))
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/range-sum-query-immutable
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class NumArray {
    
    var sums: [Int] = []
    
    init(_ nums: [Int]) {
        if nums.count > 0 {
            sums.append(nums[0])
            for i in 1 ..< nums.count {
                sums.append(sums[i-1]+nums[i])
            }
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return i == 0 ? sums[j] : sums[j] - sums[i-1]
    }
    
}
