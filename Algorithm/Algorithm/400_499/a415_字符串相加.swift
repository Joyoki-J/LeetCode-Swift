//
//  a415_字符串相加.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/11.
//

import Foundation

/*
 给定两个字符串形式的非负整数 num1 和num2 ，计算它们的和。

 提示：
 num1 和num2 的长度都小于 5100
 num1 和num2 都只包含数字 0-9
 num1 和num2 都不包含任何前导零
 你不能使用任何內建 BigInteger 库， 也不能直接将输入的字符串转换为整数形式

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-strings
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func addStrings(_ num1: String, _ num2: String) -> String {
    guard !num1.isEmpty && !num2.isEmpty else { return "0" }
    let map: [Character: Int] = ["0": 0, "1": 1, "2": 2,
                                 "3": 3, "4": 4, "5": 5,
                                 "6": 6, "7": 7, "8": 8, "9": 9]
    var index1 = num1.count - 1, index2 = num2.count - 1
    var carry = 0
    var ans = ""
    while index1 >= 0 && index2 >= 0 {
        let n1 = map[num1[num1.index(num1.startIndex, offsetBy: index1)]]!
        let n2 = map[num2[num2.index(num2.startIndex, offsetBy: index2)]]!
        let sum = n1 + n2 + carry
        carry = sum / 10
        ans = String(sum % 10) + ans
        index1 -= 1
        index2 -= 1
    }
    while index1 >= 0 {
        let n1 = map[num1[num1.index(num1.startIndex, offsetBy: index1)]]!
        let sum = n1 + carry
        carry = sum / 10
        ans = String(sum % 10) + ans
        index1 -= 1
    }
    while index2 >= 0 {
        let n2 = map[num2[num2.index(num2.startIndex, offsetBy: index2)]]!
        let sum = n2 + carry
        carry = sum / 10
        ans = String(sum % 10) + ans
        index2 -= 1
    }
    if carry > 0 {
        ans = String(carry) + ans
    }
    return ans
}
