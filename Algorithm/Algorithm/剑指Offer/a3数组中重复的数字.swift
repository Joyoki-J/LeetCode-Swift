//
//  a3数组中重复的数字.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/4.
//

import Foundation

/*
 找出数组中重复的数字。
 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 示例 1：
 输入：
 [2, 3, 1, 0, 2, 5, 3]
 输出：2 或 3

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

//原地置换
func findRepeatNumber(_ nums: [Int]) -> Int  {
    guard nums.count > 1 else { return -1 }
    var nums = nums
    for i in 0 ..< nums.count {
        while nums[i] != i {
            if nums[i] == nums[nums[i]] {
                return nums[i]
            }
            (nums[i], nums[nums[i]]) = (nums[nums[i]], nums[i])
        }
    }
    return -1
}


/* 哈希表
func findRepeatNumber(_ nums: [Int]) -> Int {
    var map: Set<Int> = Set()
    for num in nums {
        if map.contains(num) {
            return num
        }
        map.insert(num)
    }
    return 0
}
*/
