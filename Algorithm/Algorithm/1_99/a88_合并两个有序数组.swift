//
//  a88_合并两个有序数组.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/12.
//

import Foundation


/*
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。你可以假设 nums1 的空间大小等于 m + n，这样它就有足够的空间保存来自 nums2 的元素。

 示例 1：
 输入：nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 输出：[1,2,2,3,5,6]
 
 示例 2：
 输入：nums1 = [1], m = 1, nums2 = [], n = 0
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-sorted-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    let nums1Temp = nums1
    var index = 0, indexM = 0, indexN = 0
    while indexM < m && indexN < n {
        if nums1Temp[indexM] <= nums2[indexN] {
            nums1[index] = nums1Temp[indexM]
            indexM += 1
        } else {
            nums1[index] = nums2[indexN]
            indexN += 1
        }
        index += 1
    }
    while indexM < m {
        nums1[index] = nums1Temp[indexM]
        indexM += 1
        index += 1
    }
    while indexN < n {
        nums1[index] = nums2[indexN]
        indexN += 1
        index += 1
    }
}
