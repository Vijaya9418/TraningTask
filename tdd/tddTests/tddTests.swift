//
//  tddTests.swift
//  tddTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import tdd

class tddTests: XCTestCase {
    
    var objCalculator: Calculator?

    override func setUpWithError() throws {
        objCalculator = Calculator()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objCalculator = nil
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
    
    func testSum(){
        let resultSum = objCalculator?.sum(n1:1,n2:2)
        XCTAssertEqual(resultSum, 3)
        
        let resultNil = objCalculator?.sum(n1:nil,n2:nil)
        XCTAssertEqual(resultNil, nil)
        
        let results = objCalculator?.sum(n1:2,n2:nil)
        XCTAssertEqual(results, nil)
    }
    
    func testSub(){
        let resultSub = objCalculator?.sub(n1:6,n2:2)
        XCTAssertEqual(resultSub, 4)
        
        let resultNil = objCalculator?.sub(n1:nil,n2:nil)
        XCTAssertEqual(resultNil, nil)
        
        let results = objCalculator?.sub(n1:2,n2:nil)
        XCTAssertEqual(results, nil)
    }
    
    func testMulti(){
        let resultSub = objCalculator?.multi(n1:6,n2:2)
        XCTAssertEqual(resultSub, 12)
        
        let resultNil = objCalculator?.multi(n1:nil,n2:nil)
        XCTAssertEqual(resultNil, nil)
        
        let results = objCalculator?.multi(n1:2,n2:nil)
        XCTAssertEqual(results, nil)
    }
    
    
    func testDivide(){
        let resultSub = objCalculator?.divide(n1:6,n2:2)
        XCTAssertEqual(resultSub, 3)
        
        let resultNil = objCalculator?.divide(n1:nil,n2:nil)
        XCTAssertEqual(resultNil, nil)
        
        let results = objCalculator?.divide(n1:2,n2:nil)
        XCTAssertEqual(results, nil)
    }

}
