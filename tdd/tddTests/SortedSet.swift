//
//  SortedSet.swift
//  tddTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import tdd
/*

PROBLEM STATEMENT : Sorted Set


You have an array :

 

condition : 1. it should not allow duplicate element
 2. every time you insert it , array items should fall in ascending order

1. addElement - >>
2. addAll
3. max
4. min
5. deleteItemFromIndex -> -1 , 0 -->>
6. isExist -->>

*/

class SortedSet: XCTestCase {
    var objArraySet: ArraySort?

    override func setUpWithError() throws {
        objArraySet = ArraySort()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objArraySet = nil
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
    func testAdd(){
        objArraySet?.add(n: 1)
        XCTAssertEqual(objArraySet?.array.count, 1)
                }
    func testAddAll(){
        let resultAdd = objArraySet?.addAll(var: [1,2,3,4,4])
        XCTAssertEqual(resultAdd, 10)
                }
    func testMax(){
            let resultMax = objArraySet?.max(var: [1,2,3,4])
            XCTAssertEqual(resultMax, 4)
        }
        
func testMin(){
                let resultMin = objArraySet?.min(var: [1,2,3,4])
                XCTAssertEqual(resultMin, 1)
            }
   
    func testDeleteFromGivenIndex(){
        let resultIndex = objArraySet?.deleteFromIndex(element: 1, var: [1,2,3,4])
        XCTAssertEqual(resultIndex, [1,3,4])
                }
    func testDeleteFromFrist(){
        let resultDelete = objArraySet?.deleteFromFirstIndex(var: [1,2,3,4])
        XCTAssertEqual(resultDelete, [2,3,4])
                }
    
    func testDeleteFromLast(){
        let resultDelete = objArraySet?.deleteFromLastIndex(var: [1,2,3,4])
        XCTAssertEqual(resultDelete, [1,2,3])
                }
    
    func testIfExists(){
        let resultIsExists = objArraySet?.isExists(element: 2, var: [1,2,3,4,5])
        XCTAssertEqual(resultIsExists, true)
                }
    
   
}
