//
//  a15_三数之和.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/5.
//

import Foundation

/*
 给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。
 注意：答案中不可以包含重复的三元组。

 示例 1：
 输入：nums = [-1,0,1,2,-1,-4]
 输出：[[-1,-1,2],[-1,0,1]]
 
 示例 2：
 输入：nums = []
 输出：[]
 
 示例 3：
 输入：nums = [0]
 输出：[]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 2 else { return [] }
    let nums = nums.sorted()
    var ans: [[Int]] = []
    for i in 0 ..< nums.count {
        if nums[i] > 0 { break }
        if i > 0 && nums[i] == nums[i-1] { continue }
        var L = i + 1, R = nums.count - 1
        while L < R {
            let sum = nums[i] + nums[L] + nums[R]
            if  sum == 0 {
                ans.append([nums[i], nums[L], nums[R]])
                while L < R && nums[L] == nums[L+1] { L += 1 }
                while L < R && nums[R] == nums[R-1] { R -= 1 }
                L += 1
                R -= 1
            }
            else if sum < 0 { L += 1 }
            else if sum > 0 { R -= 1 }
            
        }
    }
    return ans
}
