//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-03-29.
//

import Foundation

class TreeNode<Element> : Hashable {
    
    static func == (lhs: TreeNode<Element>, rhs: TreeNode<Element>) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self).hashValue)
    }
    
    var children = [TreeNode<Element>]()
    var value: Element
        
    init(value: Element) {
        self.value = value
    }
}
