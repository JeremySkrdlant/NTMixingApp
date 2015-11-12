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
    
  
    
}
