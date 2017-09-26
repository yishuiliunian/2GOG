//
//  EveryDayAlgorithmTests.swift
//  EveryDayAlgorithmTests
//
//  Created by Dong Zhao on 2017/9/26.
//  Copyright © 2017年 qcloud. All rights reserved.
//

import XCTest

@testable import EveryDayAlgorithm

class EveryDayAlgorithmTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLongestSubstringWithoutNoRepeat()  {
    
        let solution =  Solution();
        var length:Int = solution.lengthOfLongestSubstring("2222")
        XCTAssert(length == 1)
        length = solution.lengthOfLongestSubstring("abcdefa")
        XCTAssert(length == 6)
        length = solution.lengthOfLongestSubstring("abcaefg")
        XCTAssert(length == 6)
        length = solution.lengthOfLongestSubstring("abcabcbb")
        XCTAssert(length == 3)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
