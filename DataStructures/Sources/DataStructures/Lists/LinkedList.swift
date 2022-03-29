//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-03-29.
//

import Foundation

struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
}

extension LinkedList {
    public mutating func push(_ val: Value) {
        let node = Node(val)
        node.next = head
        self.head = node
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ val: Value) {
        
        guard !isEmpty else {
            push(val)
            return
        }
        
        let node = Node(val)
        
        tail?.next = node
        tail = tail?.next
    }
    
    mutating func insert(val: Value, after index: Int) {
        let nodeAtIndex = node(at: index)
        
        guard nodeAtIndex !== tail else {
            append(val)
            return
        }
        
        let newNode = Node(val)
        newNode.next = nodeAtIndex?.next
        nodeAtIndex?.next = newNode
        
        
    }
    
    private func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentIndex < index && currentNode != nil {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
}

extension LinkedList {
    func pop() -> Value? {
        return nil
    }
    
    func removeLast() -> Value? {
        return nil
    }
    
    func remove(at index: Int) -> Value? {
        return nil
    }
}
