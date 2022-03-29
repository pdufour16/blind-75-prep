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
    
    init(value: Element) {
        self.value = value
    }
    
    
}
