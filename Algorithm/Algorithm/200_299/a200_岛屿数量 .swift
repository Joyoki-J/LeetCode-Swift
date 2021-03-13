//
//  a200_岛屿数量 .swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/13.
//

import Foundation

/*
 给你一个由 '1'（陆地）和 '0'（水）组成的的二维网格，请你计算网格中岛屿的数量。
 岛屿总是被水包围，并且每座岛屿只能由水平方向和/或竖直方向上相邻的陆地连接形成。
 此外，你可以假设该网格的四条边均被水包围。

 示例 1：
 输入：grid = [
   ["1","1","1","1","0"],
   ["1","1","0","1","0"],
   ["1","1","0","0","0"],
   ["0","0","0","0","0"]
 ]
 输出：1
 
 示例 2：
 输入：grid = [
   ["1","1","0","0","0"],
   ["1","1","0","0","0"],
   ["0","0","1","0","0"],
   ["0","0","0","1","1"]
 ]
 输出：3

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/number-of-islands
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func numIslands(_ grid: [[Character]]) -> Int {
    guard grid.count > 0 && grid[0].count > 0 else { return 0 }
    var found = [[Bool]](repeating: [Bool](repeating: false, count: grid[0].count), count: grid.count)
    func findLand(_ i: Int, _ j: Int) {
        guard i >= 0 && i < grid.count && j >= 0 && j < grid[0].count else { return }
        guard grid[i][j] == "1" && !found[i][j] else { return }
        found[i][j] = true
        let directions = [[i-1, j], [i, j+1], [i+1, j], [i, j-1]]
        for direction in directions {
            findLand(direction[0], direction[1])
        }
    }
    var ans = 0
    for i in 0 ..< grid.count {
        for j in 0 ..< grid[0].count {
            if grid[i][j] == "1" && !found[i][j] {
                findLand(i, j)
                ans += 1
            }
        }
    }
    return ans
}
