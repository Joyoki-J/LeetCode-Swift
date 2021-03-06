//
//  a11_盛最多水的容器.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/3.
//

import Foundation

/*
 给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0) 。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。
 说明：你不能倾斜容器。
 
 示例 1：
 输入：[1,8,6,2,5,4,8,3,7]
 输出：49
 解释：图中垂直线代表输入数组 [1,8,6,2,5,4,8,3,7]。在此情况下，容器能够容纳水（表示为蓝色部分）的最大值为 49。
 
 示例 2：
 输入：height = [1,1]
 输出：1
 
 示例 3：
 输入：height = [4,3,2,1,4]
 输出：16
 
 示例 4：
 输入：height = [1,2,1]
 输出：2

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/container-with-most-water
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */

func maxArea(_ height: [Int]) -> Int {
    var ans = 0
    var i = 0, j = height.count - 1
    while i < j {
        ans = max(ans, min(height[i], height[j]) * (j - i))
        if height[i] < height[j] {
            i += 1
        } else {
            j -= 1
        }
    }
    return ans
}

/* 超时
func maxArea(_ height: [Int]) -> Int {
    guard height.count > 1 else {
        return 0
    }
    var max: Int = 0
    for i in 0 ..< height.count {
        for j in i+1 ..< height.count {
            let area = (j - i) * min(height[i], height[j])
            if area > max  {
                max = area
            }
        }
    }
    return max
}
*/
