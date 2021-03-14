//
//  a103_二叉树的锯齿形层序遍历.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/14.
//

import Foundation

/*
 给定一个二叉树，返回其节点值的锯齿形层序遍历。（即先从左往右，再从右往左进行下一层遍历，以此类推，层与层之间交替进行）。
 例如：
 给定二叉树 [3,9,20,null,null,15,7],

     3
    / \
   9  20
     /  \
    15   7
 
 返回锯齿形层序遍历如下：
 [
   [3],
   [20,9],
   [15,7]
 ]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class Solution_103 {
    
    var leftQueue: [TreeNode?] = []
    var rightQueue: [TreeNode?] = []
    var ans: [[Int]] = []
    
    func forEachLeftQueue() {
        guard leftQueue.count > 0 else { return }
        var values: [Int] = []
        while leftQueue.count > 0, let node = leftQueue.removeLast() {
            values.append(node.val)
            rightQueue.append(node.left)
            rightQueue.append(node.right)
        }
        ans.append(values)
        forEachLeftQueue()
    }
    
    func forEachRightQueue() {
        guard rightQueue.count > 0 else { return }
        var values: [Int] = []
        while rightQueue.count > 0, let node = rightQueue.removeLast() {
            values.append(node.val)
            leftQueue.append(node.right)
            leftQueue.append(node.left)
        }
        ans.append(values)
        forEachLeftQueue()
    }
    
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return ans }
        leftQueue.append(root)
        forEachLeftQueue()
        return ans
    }
}
