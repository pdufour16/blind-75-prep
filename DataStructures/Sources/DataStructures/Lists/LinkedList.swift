//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-03-29.
//

import Foundation

class LinkedList<Element> {
    var head: Node<Element>?
    var tail: Node<Element>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
}

extension LinkedList {
    func push(_ element: Element) {
        
    }
    
    func append(_ element: Element) {
        
    }
    
    func insert(after element: Element) {
        
    }
}

extension LinkedList {
    func pop() -> Element? {
        return nil
    }
    
    func removeLast() -> Element? {
        return nil
    }
    
    func remove(at index: Int) -> Element? {
        return nil
    }
}
