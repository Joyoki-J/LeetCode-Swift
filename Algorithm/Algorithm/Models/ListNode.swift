//
//  ListNode.swift
//  Algorithm
//
//  Created by Joyoki on 2021/2/28.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = -1; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension Optional where Wrapped == ListNode {
    func check(with nums: [Int]) -> Bool {
        if let this = self {
            return this.check(with: nums)
        }
        return nums.count == 0
    }
}

extension ListNode: CustomDebugStringConvertible {
    convenience init?(_ nums: [Int]) {
        guard nums.count > 0 else {
            return nil
        }
        self.init(nums[0])
        var current: ListNode? = self
        for i in 1 ..< nums.count {
            current?.next = ListNode(nums[i])
            current = current?.next
        }
    }
    
    func check(with nums: [Int]) -> Bool {
        guard nums.count > 0 else { return false }
        var index = 0
        var cur: ListNode? = self
        while cur != nil && index < nums.count {
            if cur!.val != nums[index] {
                return false
            }
            cur = cur?.next
            index += 1
        }
        return true
    }
    
    var debugDescription: String {
        var nums: [Int] = []
        nums.append(self.val)
        var current = self.next
        while current != nil {
            nums.append(current!.val)
            current = current?.next
        }
        return nums.description
    }
}
