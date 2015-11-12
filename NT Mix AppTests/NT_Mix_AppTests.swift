//
//  NT_Mix_AppTests.swift
//  NT Mix AppTests
//
//  Created by Jeremy Skrdlant on 11/12/15.
//  Copyright © 2015 Jeremy Skrdlant. All rights reserved.
//

import XCTest
@testable import NT_Mix_App

class NT_Mix_AppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFluidOuncesToGallons() {
        let startAmount = 43.0;
        let result = startAmount.fluidOuncesToGallons(100)
        XCTAssert(result == 0.34, "It is converted correctly according to Siri")
    }
    
    func testOuncesToPounds(){
        let startAmount = 15.0
        let result = startAmount.ouncesToPounds(100)
        XCTAssert(result == 0.94, "It is converted correctly according to Siri")
    }
    func testCupsToGallons(){
        let startAmount = 45.0
        let results = startAmount.cupsToGallons(100)
       XCTAssert(results == 2.81, "this is converted correctly")
        
    }
    func testGallonsToCups(){
        let startAmount = 45.0
        let results = startAmount.gallonsToCups(100)
        XCTAssert(results == 720.0, "this is converted correctly")
    }
    
    func testQuartsToGallons() {
        let startAmount = 43.0;
        let result = startAmount.quartToGallons(100)
        XCTAssert(result == 10.75, "It is converted correctly according to Siri")
    }
    
    func testGallonsToQuarts() {
        let startAmount = 43.0;
        let result = startAmount.gallonsToQuarts(100)
        XCTAssert(result == 172, "It is converted correctly according to Siri")
    }

  
    
}
