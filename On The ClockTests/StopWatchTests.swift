//
//  StopWatchTests.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/28/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import XCTest
@testable import OnTheClock

class StopWatchTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUpdateCounter(){
        let stopWatch = StopWatch()
        stopWatch.updateCounter()
        XCTAssertEqual(stopWatch.count, 1)
    }
   
    func testFailedUpdateCounter(){
        let stopWatch = StopWatch()
        stopWatch.updateCounter()
        XCTAssertNotEqual(stopWatch.count, 2)
    }
    
    func testStartTimer(){
        let stopWatch = StopWatch()
        stopWatch.startTimer()
        XCTAssertNotNil(stopWatch.timer)
    }
}
