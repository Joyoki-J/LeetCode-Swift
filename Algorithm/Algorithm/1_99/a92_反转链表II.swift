//
//  a92_反转链表II.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/9.
//

import Foundation

/*
 反转从位置 m 到 n 的链表。请使用一趟扫描完成反转。
 说明:
 1 ≤ m ≤ n ≤ 链表长度。

 示例:
 输入: 1->2->3->4->5->NULL, m = 2, n = 4
 输出: 1->4->3->2->5->NULL

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-linked-list-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
    let ans = ListNode()
    ans.next = head
    var pre: ListNode? = ans
    for _ in 0 ..< left - 1 {
        pre = pre?.next
    }
    let cur = pre?.next
    for _ in 0 ..< right - left {
        let next = cur?.next
        cur?.next = next?.next
        next?.next = pre?.next
        pre?.next = next
    }
    return ans.next
}
