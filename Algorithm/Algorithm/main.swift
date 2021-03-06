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
//assert(addTwoNumbers(ListNode([2,4,3]), ListNode([5,6,4])).check(with: [7,0,8]))
//assert(addTwoNumbers(ListNode([0]), ListNode([0])).check(with: [0]))
//assert(addTwoNumbers(ListNode([9,9,9,9,9,9,9]), ListNode([9,9,9,9])).check(with: [8,9,9,9,0,0,0,1]))

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
//assert(romanToInt("III") == 3)
//assert(romanToInt("IV") == 4)
//assert(romanToInt("IX") == 9)
//assert(romanToInt("LVIII") == 58)
//assert(romanToInt("MCMXCIV") == 1994)

/***** 14.最长公共前缀 *******************************/
//assert(longestCommonPrefix(["flower","flow","flight"]) == "fl")
//assert(longestCommonPrefix(["dog","racecar","car"]) == "")

/***** 15.三数之和 *******************************/
//print(threeSum([-1,0,1,2,-1,-4]))
//print(threeSum([]))
//print(threeSum([0]))

/***** 19.删除链表的倒数第N个结点 *******************************/
//assert(removeNthFromEnd(ListNode([1,2,3,4,5]),2).check(with: [1,2,3,5]))
//assert(removeNthFromEnd(ListNode([1]),1).check(with: []))

/***** 20.有效的括号 *******************************/
//assert(isValid("()") == true)
//assert(isValid("()[]{}") == true)
//assert(isValid("(]") == false)
//assert(isValid("([)]") == false)
//assert(isValid("{[]}") == true)

/***** 21.合并两个有序链表 *******************************/
//assert(mergeTwoLists(ListNode([1,2,4]), ListNode([1,3,4])).check(with: [1,1,2,3,4,4]))
//assert(mergeTwoLists(ListNode([]), ListNode([0])).check(with: [0]))

/***** 31.下一个排列 *******************************/
//var nums = [1,2,3]
//nextPermutation(&nums)
//assert(nums == [1,3,2])
//nums = [3,2,1]
//nextPermutation(&nums)
//assert(nums == [1,2,3])
//nums = [1,1,5]
//nextPermutation(&nums)
//assert(nums == [1,5,1])
//nums = [1]
//nextPermutation(&nums)
//assert(nums == [1])

/***** 53.最大子序和 *******************************/
//assert(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]) == 6)
//assert(maxSubArray([1]) == 1)
//assert(maxSubArray([0]) == 0)
//assert(maxSubArray([-1]) == -1)
//assert(maxSubArray([-100000]) == -100000)

/***** 56.合并区间 *******************************/
//assert(merge([[1,3],[2,6],[8,10],[15,18]]) == [[1,6],[8,10],[15,18]])
//assert(merge([[1,4],[4,5]]) == [[1,5]])

/***** 79.单词搜索 *******************************/
//assert(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED") == true)
//assert(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "SEE") == true)
//assert(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB") == false)

/***** 88.合并两个有序数组 *******************************/
//var nums1 = [1,2,3,0,0,0]
//merge(&nums1, 3, [2,5,6], 3)
//assert(nums1 == [1,2,2,3,5,6])
//nums1 = [1]
//merge(&nums1, 1, [0], 0)
//assert(nums1 == [1])

/***** 92.反转链表II *******************************/
//assert(reverseBetween(ListNode([1,2,3,4,5]), 2, 4).check(with: [1,4,3,2,5]))

/***** 143.重排链表 *******************************/
//let node = ListNode([1,2,3,4,5])
//reorderList(node)
//print(node)

/***** 146.LRU缓存机制 *******************************/
//let LRU = LRUCache(2)
//LRU.put(1, 1)
//LRU.put(2, 2)
//assert(LRU.get(1) == 1)
//LRU.put(3, 3)
//assert(LRU.get(2) == -1)
//LRU.put(4, 4)
//assert(LRU.get(1) == -1)
//assert(LRU.get(3) == 3)
//assert(LRU.get(4) == 4)

/***** 200_岛屿数量 *******************************/
//var grid: [[Character]] = [
//  ["1","1","1","1","0"],
//  ["1","1","0","1","0"],
//  ["1","1","0","0","0"],
//  ["0","0","0","0","0"]
//]
//assert(numIslands(grid) == 1)
//grid = [
//  ["1","1","0","0","0"],
//  ["1","1","0","0","0"],
//  ["0","0","1","0","0"],
//  ["0","0","0","1","1"]
//]
//assert(numIslands(grid) == 3)

/***** 232.用栈实现队列 *******************************/
//let myQueue = MyQueue()
//myQueue.push(1); // queue is: [1]
//myQueue.push(2); // queue is: [1, 2] (leftmost is front of the queue)
//assert(myQueue.peek() == 1)
//assert(myQueue.pop() == 1)
//assert(myQueue.empty() == false)

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

/***** 406.根据身高重建队列 *******************************/
//assert(reconstructQueue([[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]) == [[5,0],[7,0],[5,2],[6,1],[4,4],[7,1]])
//assert(reconstructQueue([[6,0],[5,0],[4,0],[3,2],[2,2],[1,4]]) == [[4,0],[5,0],[2,2],[3,2],[1,4],[6,0]])

/***** 415.字符串相加 *******************************/
//assert(addStrings("123", "321") == "444")
//assert(addStrings("991", "9") == "1000")

/***** 896.单调数列 *******************************/
//assert(isMonotonic([1,2,2,3]) == true)
//assert(isMonotonic([6,5,4,4]) == true)
//assert(isMonotonic([1,3,2])   == false)
//assert(isMonotonic([1,2,4,5]) == true)
//assert(isMonotonic([1,1,1])   == true)

/***** 912.排序数组 *******************************/
assert(sortArray([5,2,3,1]) == [1,2,3,5])
assert(sortArray([5,1,1,2,0,0]) == [0,0,1,1,2,5])

/***** 1047.删除字符串中的所有相邻重复项 *******************************/
//assert(removeDuplicates("abbaca") == "ca")

/***** 1653.使字符串平衡的最少删除次数 *******************************/
//assert(minimumDeletions("aababbab") == 2)
//assert(minimumDeletions("bbaaaaabb") == 2)

/***** 剑指Offer 3.数组中重复的数字 *******************************/
//assert(findRepeatNumber([2, 3, 1, 0, 2, 5, 3]) == 2)

/***** 剑指Offer 22.链表中倒数第k个节点 *******************************/
//assert(getKthFromEnd(ListNode([1,2,3,4,5]),2).check(with: [4,5]))

/***** 剑指Offer 24.反转链表 *******************************/
//assert(reverseList(ListNode([1,2,3,4,5])).check(with: [5,4,3,2,1]))

print("测试通过!")
