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

// 冒泡排序
func sortArray(_ nums: [Int]) -> [Int]  {
    guard nums.count > 1 else { return nums }
    var nums = nums
    for i in 0 ..< nums.count - 1 {
        for j in i ..< nums.count {
            if nums[i] > nums[j] {
                (nums[i], nums[j]) = (nums[j], nums[i])
            }
        }
    }
    return nums
}

/* 快速排序
func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    var nums = nums
    func partition(_ left: Int, _ right: Int) -> Int {
        var left = left, right = right
        let pivot = nums[left]
        while left < right {
            while left < right && nums[right] >= pivot {
                right -= 1
            }
            if left < right { nums[left] = nums[right] }
            while left < right && nums[left] <= pivot {
                left += 1
            }
            if left < right { nums[right] = nums[left] }
        }
        nums[left] = pivot
        return left
    }
    func quickSort(_ left: Int, _ right: Int) {
        if left < right {
            let index = partition(left, right)
            quickSort(left, index-1)
            quickSort(index+1, right)
        }
    }
    quickSort(0, nums.count-1)
    return nums
}
*/

/* 插入排序
func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    var preIndex = 0, current = 0
    var nums = nums
    for i in 1 ..< nums.count {
        preIndex = i - 1
        current = nums[i]
        while preIndex >= 0 && nums[preIndex] > current {
            nums[preIndex + 1] = nums[preIndex]
            preIndex -= 1
        }
        nums[preIndex + 1] = current
    }
    return nums
}
*/

/* 希尔排序
func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    var nums = nums
    var increment = nums.count / 2
    var preIndex = 0, current = 0
    while increment >= 1 {
        for i in 0 ..< increment {
            for j in stride(from: i + increment, to: nums.count, by: increment) {
                preIndex = j - increment
                current = nums[j]
                while preIndex >= 0 && nums[preIndex] > current {
                    nums[preIndex+increment] = nums[preIndex]
                    preIndex -= increment
                }
                nums[preIndex+increment] = current
            }
        }
        increment /= 2
    }
    return nums
}
 */
 
/* 简单选择排序
func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    var nums = nums
    var minIndex = 0
    for i in 0 ..< nums.count - 1 {
        minIndex = i
        for j in i + 1 ..< nums.count {
            if nums[j] < nums[minIndex] {
                minIndex = j
            }
        }
        (nums[i], nums[minIndex]) = (nums[minIndex], nums[i])
    }
    return nums
}
 */

/* 堆排序
func sortArray(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return nums }
    var nums = nums
    //下沉
    func sink(_ k: Int, _ end: Int) {
        var k = k
        while 2 * k + 1 < end {
            // 左子节点
            var j = 2 * k + 1
            //找到两个子节点中最大的
            if j + 1 < end && nums[j + 1] > nums[j] {
                j += 1
            }
            if nums[k] < nums[j] {
                (nums[k], nums[j]) = (nums[j], nums[k])
            }
            k = j
        }
    }
    //下沉建立大顶堆
    for k in (0...nums.count/2).reversed() {
        sink(k, nums.count)
    }
    //排序
    for i in (1...nums.count-1).reversed() {
        //把第一个和最后一个交换,保证最后一个就是最大的数
        (nums[0], nums[i]) = (nums[i], nums[0])
        //再对交换上来的第一个数进行下沉
        sink(0, i)
        
    }
    return nums
}
 */

/* 归并排序
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
 */
