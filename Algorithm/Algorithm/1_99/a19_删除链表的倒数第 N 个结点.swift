//
//  a19_删除链表的倒数第 N 个结点.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/15.
//

import Foundation

/*
 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
 进阶：你能尝试使用一趟扫描实现吗？

 示例 1：
 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]
 
 示例 2：
 输入：head = [1], n = 1
 输出：[]
 
 示例 3：
 输入：head = [1,2], n = 1
 输出：[1]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let list = ListNode()
    list.next = head
    var n = n
    var fastNode: ListNode? = list
    var slowNode: ListNode? = list
    while n > 0 {
        fastNode = fastNode?.next
        n -= 1
    }
    while fastNode != nil && fastNode?.next != nil {
        fastNode = fastNode?.next
        slowNode = slowNode?.next
    }
    slowNode?.next = slowNode?.next?.next
    return list.next
}
