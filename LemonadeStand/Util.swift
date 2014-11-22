//
//  Util.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

class Util {
    class func rnd(range: Int, offset: Int = 0) -> Int {
        return Int(arc4random_uniform(UInt32(range) + offset))
    }
}