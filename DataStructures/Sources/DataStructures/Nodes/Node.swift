//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-03-29.
//

import Foundation

class Node<Element> {
    var next: Node?
    var value: Element
    
    init(_ value: Element) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> \(String(describing: next) )"
    }
}
