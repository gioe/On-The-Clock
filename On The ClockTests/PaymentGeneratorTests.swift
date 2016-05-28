//
//  PaymentGeneratorTests.swift
//  On The Clock
//
//  Created by Matt Gioe on 5/28/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import XCTest
@testable import OnTheClock

class PaymentGeneratorTests: XCTestCase {
    
    let globalPaymentGenerator = PaymentGenerator(rate: 75.99)

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitialization(){
        let paymentGenerator = PaymentGenerator.init(rate: 75.39)
        XCTAssertEqual(paymentGenerator.hourlyRateInput, 75.39)
        XCTAssertEqual(paymentGenerator.hourlyRateInDollas, "$75.39" )
    }
    
    func testInitializePaymentGeneratorWithRate() {
        let currentPaymentGenerator = PaymentGenerator(rate: 75.39)
        XCTAssertEqual(currentPaymentGenerator.hourlyRateInput, 75.39)
    }
    
    func testFailedInitializePaymentGeneratorWithRate() {
        let currentPaymentGenerator = PaymentGenerator(rate: 75.39)
        XCTAssertNotEqual(currentPaymentGenerator.hourlyRateInput, 75.29)
    }
    
    func testDollarConversionFunction(){
        XCTAssertEqual(globalPaymentGenerator.hourlyRateInDollas, "$75.99")
    }
}
