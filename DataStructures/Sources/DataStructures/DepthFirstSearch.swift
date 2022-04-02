//
//  File.swift
//  
//
//  Created by Patrick Dufour on 2022-04-02.
//

import Foundation

class DepthFirstSearch {
    
    func DFSArrayRepresentation(node: TreeNode<Int>) -> [[Int]] {
        var queue = Queue<TreeNode<Int>>()
        var visited = Set<TreeNode<Int>>()
        queue.enqueue(node)
        visited.insert(node)
        
        var levelSize = 1
        var currentLevel = 0
        var answerArray = [[Int]]()
        answerArray.append([])
        
        while !queue.isEmpty {
            guard let currentNode = queue.dequeue() else {
                continue
            }
            
            if levelSize == 0 {
                answerArray.append([currentNode.value])
                currentLevel += 1
                levelSize = queue.count
            } else {
                answerArray[currentLevel].append(currentNode.value)
                levelSize -= 1
            }
            
            for adjacentNode in currentNode.children where !visited.contains(adjacentNode) {
                queue.enqueue(adjacentNode)
                visited.insert(adjacentNode)
            }
            
           
            
        }
        print("Hello")
        return answerArray
    }
    
}
