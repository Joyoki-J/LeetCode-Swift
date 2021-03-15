//
//  a912_排序数组.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/15.
//

import Foundation

/*
 给你一个整数数组 nums，请你将该数组升序排列。
 
 示例 1：
 输入：nums = [5,2,3,1]
 输出：[1,2,3,5]
 
 示例 2：
 输入：nums = [5,1,1,2,0,0]
 输出：[0,0,1,1,2,5]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/sort-an-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    func sort(_ left: Int, _ right: Int, _ nums: inout [Int], _ temp: inout [Int]) {
        guard left < right else { return }
        let mid = (left + right) / 2
        sort(left, mid, &nums, &temp)
        sort(mid + 1, right, &nums, &temp)
        var i = left
        var j = mid + 1
        var t = 0
        while i <= mid && j <= right {
            if nums[i] <= nums[j] {
                temp[t] = nums[i]
                i += 1
            } else {
                temp[t] = nums[j]
                j += 1
            }
            t += 1
        }
        while i <= mid {
            temp[t] = nums[i]
            i += 1
            t += 1
        }
        while j <= right {
            temp[t] = nums[j]
            j += 1
            t += 1
        }
        t = 0
        for i in left ... right {
            nums[i] = temp[t]
            t += 1
        }
    }
    var temp = nums, nums = nums
    sort(0, nums.count - 1, &nums, &temp)
    return nums
}
