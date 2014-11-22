//
//  LemonadeStandTests.swift
//  LemonadeStandTests
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import UIKit
import XCTest

class LemonadeStandTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWeather() {
        XCTAssertEqual(Weather.Cold.rawValue, UInt32(0), "wrong weather number")
        XCTAssertEqual(Weather.Mild.rawValue, UInt32(1), "wrong weather number")
        XCTAssertEqual(Weather.Warm.rawValue, UInt32(2), "wrong weather number")
    }
    
    func testGame() {
        var stand = LemonadeStand()
        
        stand.addLemonToInventory()
        stand.addLemonToInventory()
        
        XCTAssertEqual(stand.budget, 6)
        XCTAssertEqual(stand.lemonsInInventory, 3)

        stand.addLemonToMix()
        stand.addLemonToMix()
        
        XCTAssertEqual(stand.lemonsInInventory, 1)
        XCTAssertEqual(stand.lemonsInMix, 2)
        
        var lemonade = stand.prepareLemonade()
        
        XCTAssertNil(lemonade, "should not work without ice cubes")
        
        stand.addIceCubeToMix()

        XCTAssertEqual(stand.iceCubesInInventory, 0)
        XCTAssertEqual(stand.iceCubesInMix, 1)
        
        Game.lemonadeStand = stand
        println("Budget before: \(stand.budget)")
        Game.newDay()
        println("Budget after: \(stand.budget)")
        
        XCTAssertEqual(stand.lemonsInMix, 0)
        XCTAssertEqual(stand.iceCubesInMix, 0)
    }
    
}
