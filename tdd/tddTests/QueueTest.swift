//
//  QueueTest.swift
//  tddTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import tdd

class QueueTest: XCTestCase {
    var objQueue: Queue?

    override func setUpWithError() throws {
        objQueue = Queue()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objQueue = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
  

func testpop(){
    let result = objQueue?.pop()
    XCTAssertEqual(result,2)
}
func testpush() {
    objQueue?.push(5)
    XCTAssertEqual(objQueue?.array.count, 4)
}

}
