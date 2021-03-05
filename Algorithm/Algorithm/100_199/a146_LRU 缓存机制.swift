//
//  a146_LRU 缓存机制.swift
//  Algorithm
//
//  Created by Joyoki on 2021/3/5.
//

import Foundation

/*
 运用你所掌握的数据结构，设计和实现一个  LRU (最近最少使用) 缓存机制 。
 实现 LRUCache 类：

 LRUCache(int capacity) 以正整数作为容量 capacity 初始化 LRU 缓存
 int get(int key) 如果关键字 key 存在于缓存中，则返回关键字的值，否则返回 -1 。
 void put(int key, int value) 如果关键字已经存在，则变更其数据值；如果关键字不存在，则插入该组「关键字-值」。当缓存容量达到上限时，它应该在写入新数据之前删除最久未使用的数据值，从而为新的数据值留出空间。
 
 进阶：你是否可以在 O(1) 时间复杂度内完成这两种操作？

 示例：

 输入
 ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
 [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
 输出
 [null, null, null, 1, null, -1, null, -1, 3, 4]

 解释
 LRUCache lRUCache = new LRUCache(2);
 lRUCache.put(1, 1); // 缓存是 {1=1}
 lRUCache.put(2, 2); // 缓存是 {1=1, 2=2}
 lRUCache.get(1);    // 返回 1
 lRUCache.put(3, 3); // 该操作会使得关键字 2 作废，缓存是 {1=1, 3=3}
 lRUCache.get(2);    // 返回 -1 (未找到)
 lRUCache.put(4, 4); // 该操作会使得关键字 1 作废，缓存是 {4=4, 3=3}
 lRUCache.get(1);    // 返回 -1 (未找到)
 lRUCache.get(3);    // 返回 3
 lRUCache.get(4);    // 返回 4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lru-cache
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class LRUCache {
    
    class Node {
        var value = 0
        var key = 0
        var prev: Node?
        var next: Node?
        init () {}
        init (_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }
    
    var size = 0
    let capacity: Int
    let head: Node = Node()
    let tail: Node = Node()
    var cache: [Int: Node] = [:]
    
    init(_ capacity: Int) {
        self.capacity = capacity
        self.head.next = self.tail
        self.tail.prev = self.head
    }
    
    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            moveToHead(node)
            return node.value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            moveToHead(node)
        } else {
            let node = Node(key, value)
            cache[key] = node
            addToHead(node)
            size += 1
            if size > capacity {
                let removedNode = removeTail()
                cache.removeValue(forKey: removedNode.key)
                size -= 1
            }
        }
    }
    
    private func moveToHead(_ node: Node) {
        remove(node)
        addToHead(node)
    }
    
    private func addToHead(_ node: Node) {
        node.prev = self.head
        node.next = self.head.next
        self.head.next?.prev = node
        self.head.next = node
    }
    
    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }
    
    private func removeTail() -> Node {
        let tail = self.tail.prev!
        remove(tail)
        return tail
    }
}
