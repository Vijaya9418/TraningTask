//
//  jsonProjectTests.swift
//  jsonProjectTests
//
//  Created by BKS-GGS on 10/01/23.
//

import XCTest
@testable import jsonProject

class jsonProjectTests: XCTestCase {
    var objApiManager: ApiManager?

    override func setUpWithError() throws {
    objApiManager = ApiManager()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objApiManager = nil
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
    func testGetNewsFrom(){
        objApiManager?.getNewsFrom(url: "https://hn.algolia.com/api/v1/search?tags=front_page") { responseFromServer in
            XCTAssertNotNil(responseFromServer)
        }
    }
        

}
