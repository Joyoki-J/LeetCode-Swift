//
//  a56_合并区间.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/13.
//

import Foundation

/*
 以数组 intervals 表示若干个区间的集合，其中单个区间为 intervals[i] = [starti, endi] 。请你合并所有重叠的区间，并返回一个不重叠的区间数组，该数组需恰好覆盖输入中的所有区间。

 示例 1：
 输入：intervals = [[1,3],[2,6],[8,10],[15,18]]
 输出：[[1,6],[8,10],[15,18]]
 解释：区间 [1,3] 和 [2,6] 重叠, 将它们合并为 [1,6].
 
 示例 2：
 输入：intervals = [[1,4],[4,5]]
 输出：[[1,5]]
 解释：区间 [1,4] 和 [4,5] 可被视为重叠区间。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-intervals
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func merge(_ intervals: [[Int]]) -> [[Int]] {
    guard intervals.count > 0 else { return [] }
    let intervals = intervals.sorted(by: { $0[0] < $1[0] })
    var ans: [[Int]] = []
    ans.append(intervals[0])
    for interval in intervals[1...] {
        if interval[0] > ans[ans.count - 1][1] {
            ans.append(interval)
        } else {
            ans[ans.count - 1][1] = max(ans[ans.count - 1][1], interval[1])
        }
    }
    return ans
}
