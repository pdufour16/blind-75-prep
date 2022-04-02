//
//  LinkedListTests.swift
//
//
//  Created by Patrick Dufour on 2022-03-29.
//

import XCTest
@testable import DataStructures

class QueueTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testQueueIsCorrect() throws {
        
        var queue = Queue<Int>()
        
        queue.enqueue(5)
        queue.enqueue(3)
        queue.enqueue(2)
        queue.enqueue(1)
        
        XCTAssertEqual(5, queue.dequeue())
        XCTAssertEqual(3, queue.dequeue())
        XCTAssertEqual(2, queue.dequeue())
        XCTAssertEqual(1, queue.dequeue())



    }


}
