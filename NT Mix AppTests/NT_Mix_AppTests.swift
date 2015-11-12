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

    }
    
    override func tearDown() {

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
    
  
    
}
