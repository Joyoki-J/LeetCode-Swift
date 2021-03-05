//
//  a20_有效的括号.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/5.
//

import Foundation

/*
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串 s ，判断字符串是否有效。
 有效字符串需满足：
 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
  
 示例 1：
 输入：s = "()"
 输出：true
 
 示例 2：
 输入：s = "()[]{}"
 输出：true
 
 示例 3：
 输入：s = "(]"
 输出：false
 
 示例 4：
 输入：s = "([)]"
 输出：false
 
 示例 5：
 输入：s = "{[]}"
 输出：true

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/valid-parentheses
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var stack: [Character] = []
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            stack.append(char)
        } else if char == ")" && stack.popLast() != "(" {
            return false
        } else if char == "}" && stack.popLast() != "{" {
            return false
        } else if char == "]" && stack.popLast() != "[" {
            return false
        }
    }
    return stack.isEmpty
}
