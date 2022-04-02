//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-04-02.
//

import Foundation

class Queue<Value> {
    
    private var leftStack = [Value]()
    private var rightStack = [Value]()
    
    var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
    
    var count: Int {
        return leftStack.count + rightStack.count
    }
    
    func enqueue(_ val: Value) {
        rightStack.append(val)
    }
    
    func dequeue() -> Value? {
        if leftStack.isEmpty {
            leftStack.append(contentsOf: rightStack.reversed())
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
    
    
    
}
