//
//  a143_重排链表 .swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/5.
//

import Foundation

/*
 给定一个单链表 L：L0→L1→…→Ln-1→Ln ，
 将其重新排列后变为： L0→Ln→L1→Ln-1→L2→Ln-2→…
 你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。

 示例 1:
 给定链表 1->2->3->4, 重新排列为 1->4->2->3.
 
 示例 2:
 给定链表 1->2->3->4->5, 重新排列为 1->5->2->4->3.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reorder-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

func reorderList(_ head: ListNode?) {
    //找出中间节点
    func findMiddleNode(_ head: ListNode?) -> ListNode? {
        var fastNode = head, slowNode = head
        while fastNode != nil && fastNode?.next != nil {
            fastNode = fastNode?.next?.next
            slowNode = slowNode?.next
        }
        return slowNode
    }
    //翻转链表
    func reverseList(_ head: ListNode?) -> ListNode? {
        let ans = ListNode()
        var cur = head
        while cur != nil {
            let next = ans.next
            ans.next = cur
            cur = cur?.next
            ans.next?.next = next
        }
        return ans.next
    }
    let middle = findMiddleNode(head)
    var list1 = head
    var list2 = middle?.next
    middle?.next = nil
    list2 = reverseList(list2)
    var current: ListNode? = ListNode()
    while list1 != nil || list2 != nil {
        if list1 != nil {
            current?.next = list1
            current = current?.next
            list1 = list1?.next
        }
        if list2 != nil {
            current?.next = list2
            current = current?.next
            list2 = list2?.next
        }
    }
    
}

/* 这个方法不是很好
func reorderList(_ head: ListNode?) {
    var arr: [ListNode] = []
    var node = head
    while node != nil {
        arr.append(node!)
        node = node?.next
    }
    var i = 0, j = arr.count - 1
    let ans = ListNode()
    var current: ListNode? = ans
    while i <= j {
        if i < j {
            current?.next = arr[i]
            current = current?.next
            i += 1
        }
        if i <= j {
            current?.next = arr[j]
            current = current?.next
            j -= 1
        }
    }
    current?.next = nil
}
*/
