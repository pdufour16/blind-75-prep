//
//  LinkedListTests.swift
//
//
//  Created by Patrick Dufour on 2022-03-29.
//

import XCTest
@testable import DataStructures

class DepthFirstSearchTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDepthFirstSearchArrayRepresentation() throws {
        
        var node1 = TreeNode(value: 1)
        var node2 = TreeNode(value: 2)
        var node3 = TreeNode(value: 3)
        var node4 = TreeNode(value: 4)
        var node5 = TreeNode(value: 5)
        var node6 = TreeNode(value: 6)
        var node7 = TreeNode(value: 7)

        node3.children = [node6, node7]
        node2.children = [node4, node5]
        node1.children = [node2, node3]
        
        var dfs = DepthFirstSearch()
        dfs.DFSArrayRepresentation(node: node1)




    }


}
