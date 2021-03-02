//
//  a304_二维区域和检索_矩阵不可变 .swift
//  Algorithm
//
//  Created by joyoki on 2021/3/2.
//

import Foundation

/*
 给定一个二维矩阵，计算其子矩形范围内元素的总和，该子矩阵的左上角为 (row1, col1) ，右下角为 (row2, col2)。
 [
   [3, 0, 1, 4, 2],
   [5, 6, 3, 2, 1],
   [1, 2, 0, 1, 5],
   [4, 1, 0, 1, 7],
   [1, 0, 3, 0, 5]
 ]
 上图子矩阵左上角 (row1, col1) = (2, 1) ，右下角(row2, col2) = (4, 3)，该子矩形内元素的总和为 8。
 
 示例:
 给定 matrix = [
   [3, 0, 1, 4, 2],
   [5, 6, 3, 2, 1],
   [1, 2, 0, 1, 5],
   [4, 1, 0, 1, 7],
   [1, 0, 3, 0, 5]
 ]

 sumRegion(2, 1, 4, 3) -> 8
 sumRegion(1, 1, 2, 2) -> 11
 sumRegion(1, 2, 2, 4) -> 12

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/range-sum-query-2d-immutable
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class NumMatrix {
    
    typealias Point = (row: Int, col: Int)
    
    var sumMatrix: [[Int]]!
    
    init(_ matrix: [[Int]]) {
        if matrix.count > 0 && matrix[0].count > 0 {
            let rows = matrix.count + 1
            let cols = matrix[0].count + 1
            sumMatrix = [[Int]](repeating: [Int](repeating: 0, count: cols), count: rows)
            for i in 0 ..< rows {
                for j in 0 ..< cols {
                    if i == 0 || j == 0 {
                        sumMatrix[i][j] = 0
                    } else {
                        sumMatrix[i][j] = sumMatrix[i-1][j] + sumMatrix[i][j-1] + matrix[i-1][j-1] - sumMatrix[i-1][j-1]
                    }
                }
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        //因为和矩阵比原矩阵多了一行和一列,所以将这里的两个点的横纵坐标分别加1
        let p1: Point = (row1+1, col1+1)
        let p2: Point = (row2+1, col2+1)
        return sumMatrix[p2.row][p2.col] - sumMatrix[p1.row-1][p2.col] - sumMatrix[p2.row][p1.col-1] + sumMatrix[p1.row-1][p1.col-1]
    }
}
