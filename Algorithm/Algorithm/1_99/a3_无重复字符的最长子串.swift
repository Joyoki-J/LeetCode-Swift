//
//  a3_无重复字符的最长子串.swift
//  Algorithm
//
//  Created by Joyoki on 2021/2/28.
//

import Foundation

/*
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
 
 示例 1:
 输入: s = "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 
 示例 2:
 输入: s = "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 
 示例 3:
 输入: s = "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
      请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 
 示例 4:
 输入: s = ""
 输出: 0

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-substring-without-repeating-characters
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    var ans = 0, start = 0, end = 0
    let chars = Array(s)
    while end < chars.count {
        for i in start..<end {
            if chars[i] == chars[end] {
                start = i + 1
                break
            }
        }
        ans = max(ans, end - start + 1)
        end += 1
    }
    return ans
}

/*
func lengthOfLongestSubstring(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    var ans = 0
    var chars: [Character] = []
    for char in s {
        if chars.contains(char) {
            chars.removeSubrange(0...chars.firstIndex(of: char)!)
        }
        chars.append(char)
        ans = max(ans, chars.count)
    }
    return ans
}
*/
