//
//  LinkedListTests.swift
//  
//
//  Created by Patrick Dufour on 2022-03-29.
//

import XCTest
@testable import DataStructures

class LinkedListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLinkedListIsCorrect() throws {
        
        var linkedList = LinkedList<Int>()
        
        linkedList.push(5)
        
        XCTAssert(linkedList.head!.value == 5)
        XCTAssert(linkedList.tail!.value == 5)

        linkedList.push(6)
        linkedList.push(7)
        
        XCTAssert(linkedList.head!.value == 7)
        
        linkedList.append(10)
        
        
        XCTAssert(linkedList.head!.value == 7)
        XCTAssert(linkedList.tail!.value == 10)

    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
