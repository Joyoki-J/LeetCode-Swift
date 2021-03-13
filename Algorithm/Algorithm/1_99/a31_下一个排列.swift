//
//  a31_下一个排列.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/12.
//

import Foundation

/*
 实现获取 下一个排列 的函数，算法需要将给定数字序列重新排列成字典序中下一个更大的排列。
 如果不存在下一个更大的排列，则将数字重新排列成最小的排列（即升序排列）。
 必须 原地 修改，只允许使用额外常数空间。

 示例 1：
 输入：nums = [1,2,3]
 输出：[1,3,2]
 
 示例 2：
 输入：nums = [3,2,1]
 输出：[1,2,3]
 
 示例 3：
 输入：nums = [1,1,5]
 输出：[1,5,1]
 
 示例 4：
 输入：nums = [1]
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/next-permutation
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func nextPermutation(_ nums: inout [Int]) {
    guard nums.count > 0 else { return }
    var i = nums.count - 2, j = nums.count - 1
    while i >= 0 && nums[i] >= nums[j] {
        i -= 1
        j -= 1
    }
    if i >= 0 {
        var k = nums.count - 1
        while nums[i] >= nums[k] {
            k -= 1
        }
        (nums[i], nums[k]) = (nums[k], nums[i])
    }
    i = j; j = nums.count - 1
    while i < j {
        (nums[i], nums[j]) = (nums[j], nums[i])
        i += 1
        j -= 1
    }
}
