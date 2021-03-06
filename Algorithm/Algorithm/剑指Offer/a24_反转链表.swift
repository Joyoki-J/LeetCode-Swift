//
//  a24_反转链表.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/5.
//

import Foundation

/*
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

 示例:
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func reverseList(_ head: ListNode?) -> ListNode? {
    let ans = ListNode()
    var head = head
    while head != nil {
        let next = ans.next
        ans.next = head
        head = head?.next
        ans.next?.next = next
    }
    return ans.next
}
