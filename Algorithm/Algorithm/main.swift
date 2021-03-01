//
//  main.swift
//  Algorithm
//
//  Created by Joyoki on 2021/2/28.
//

import Foundation

/***** 1.两数之和 *******************************/
//assert(twoSum([2,7,11,15], 9) == [0, 1])
//assert(twoSum([3,2,4], 6)     == [1, 2])
//assert(twoSum([3,3], 6)       == [0, 1])

/***** 2.两数相加 *******************************/
//assert(addTwoNumbers(ListNode([2,4,3]), ListNode([5,6,4]))?.check(with: [7,0,8]) ?? false)
//assert(addTwoNumbers(ListNode([0]), ListNode([0]))?.check(with: [0]) ?? false)
//assert(addTwoNumbers(ListNode([9,9,9,9,9,9,9]), ListNode([9,9,9,9]))?.check(with: [8,9,9,9,0,0,0,1]) ?? false)

/***** 3.无重复字符的最长子串 *******************************/
//assert(lengthOfLongestSubstring("abcabcbb") == 3)
//assert(lengthOfLongestSubstring("bbbbb")    == 1)
//assert(lengthOfLongestSubstring("pwwkew")   == 3)
//assert(lengthOfLongestSubstring("")         == 0)

/***** 303.区域和检索-数组不可变 *******************************/
//let numArray = NumArray([-2, 0, 3, -5, 2, -1])
//assert(numArray.sumRange(0, 2) == 1)
//assert(numArray.sumRange(2, 5) == -1)
//assert(numArray.sumRange(0, 5) == -3)

/***** 896.单调数列 *******************************/
//assert(isMonotonic([1,2,2,3]) == true)
//assert(isMonotonic([6,5,4,4]) == true)
//assert(isMonotonic([1,3,2])   == false)
//assert(isMonotonic([1,2,4,5]) == true)
//assert(isMonotonic([1,1,1])   == true)

/***** 1653.使字符串平衡的最少删除次数 *******************************/
assert(minimumDeletions("aababbab") == 2)
assert(minimumDeletions("bbaaaaabb") == 2)

print("测试通过!")
