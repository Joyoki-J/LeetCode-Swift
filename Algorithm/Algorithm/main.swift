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

/***** 10.正则表达式匹配*******************************/
//assert(isMatch("aaa", "a*a") == true)
//assert(isMatch("aa", "a*") == true)
//assert(isMatch("aa", "a") == false)
//assert(isMatch("aa", "a") == false)
//assert(isMatch("aa", "a") == false)

/***** 11.盛最多水的容器 *******************************/
//assert(maxArea([1,8,6,2,5,4,8,3,7]) == 49)
//assert(maxArea([1,1]) == 1)
//assert(maxArea([4,3,2,1,4]) == 16)
//assert(maxArea([1,2,1]) == 2)

/***** 12.整数转罗马数字 *******************************/
//assert(intToRoman(3) == "III")
//assert(intToRoman(4) == "IV")
//assert(intToRoman(9) == "IX")
//assert(intToRoman(58) == "LVIII")
//assert(intToRoman(1994) == "MCMXCIV")

/***** 13.罗马数字转整数 *******************************/
assert(romanToInt("III") == 3)
assert(romanToInt("IV") == 4)
assert(romanToInt("IX") == 9)
assert(romanToInt("LVIII") == 58)
assert(romanToInt("MCMXCIV") == 1994)

/***** 303.区域和检索-数组不可变 *******************************/
//let numArray = NumArray([-2, 0, 3, -5, 2, -1])
//assert(numArray.sumRange(0, 2) == 1)
//assert(numArray.sumRange(2, 5) == -1)
//assert(numArray.sumRange(0, 5) == -3)

/***** 304.二维区域和检索-矩阵不可变 *******************************/
//let matrix = [
//    [3, 0, 1, 4, 2],
//    [5, 6, 3, 2, 1],
//    [1, 2, 0, 1, 5],
//    [4, 1, 0, 1, 7],
//    [1, 0, 3, 0, 5]
//]
//let obj = NumMatrix(matrix)
//assert(obj.sumRegion(2, 1, 4, 3) == 8)
//assert(obj.sumRegion(1, 1, 2, 2) == 11)
//assert(obj.sumRegion(1, 2, 2, 4) == 12)

/***** 338.比特位计数 *******************************/
//assert(countBits(2) == [0,1,1])
//assert(countBits(5) == [0,1,1,2,1,2])
//assert(countBits(7) == [0,1,1,2,1,2,2,3])

/***** 896.单调数列 *******************************/
//assert(isMonotonic([1,2,2,3]) == true)
//assert(isMonotonic([6,5,4,4]) == true)
//assert(isMonotonic([1,3,2])   == false)
//assert(isMonotonic([1,2,4,5]) == true)
//assert(isMonotonic([1,1,1])   == true)

/***** 1653.使字符串平衡的最少删除次数 *******************************/
//assert(minimumDeletions("aababbab") == 2)
//assert(minimumDeletions("bbaaaaabb") == 2)

print("测试通过!")
