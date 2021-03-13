//
//  a42_连续子数组的最大和.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/12.
//

import Foundation

/*
 输入一个整型数组，数组中的一个或连续多个整数组成一个子数组。求所有子数组的和的最大值。
 要求时间复杂度为O(n)。

 示例1:
 输入: nums = [-2,1,-3,4,-1,2,1,-5,4,3]
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func offer_maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 1 else {
        return nums.isEmpty ? 0 : nums[0]
    }
    var sum = 0, maxNum = nums[0]
    for num in nums {
        sum = max(sum + num, num)
        maxNum = max(sum, maxNum)
    }
    return maxNum
}
