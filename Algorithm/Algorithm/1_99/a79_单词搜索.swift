//
//  a79_单词搜索.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/7.
//

import Foundation

/*
 给定一个二维网格和一个单词，找出该单词是否存在于网格中。
 单词必须按照字母顺序，通过相邻的单元格内的字母构成，其中“相邻”单元格是那些水平相邻或垂直相邻的单元格。同一个单元格内的字母不允许被重复使用。

 示例:
 board =
 [
   ['A','B','C','E'],
   ['S','F','C','S'],
   ['A','D','E','E']
 ]

 给定 word = "ABCCED", 返回 true
 给定 word = "SEE", 返回 true
 给定 word = "ABCB", 返回 false

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/word-search
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func exist(_ board: [[Character]], _ word: String) -> Bool {
    let rows = board.count, cols = board[0].count
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: cols), count: rows)
    func check(_ i: Int, _ j: Int, k: Int, _ visited: inout [[Bool]]) -> Bool {
        if board[i][j] != word[word.index(word.startIndex, offsetBy: k)] {
            return false
        } else if k == word.count - 1 {
            return true
        }
        visited[i][j] = true
        let directions = [[0,1],[0,-1],[1,0],[-1,0]]
        var result = false
        for direction in directions {
            let newi = i + direction[0], newj = j + direction[1]
            if newi >= 0 && newi < rows && newj >= 0 && newj < cols && !visited[newi][newj] {
                if check(newi, newj, k: k + 1, &visited) {
                    result = true
                    break
                }
            }
        }
        visited[i][j] = false
        return result
    }
    for i in 0 ..< rows  {
        for j in 0 ..< cols {
            if check(i, j, k: 0, &visited) {
                return true
            }
        }
    }
    return false
}
