//
//  Customer.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

class Customer {
    var preferredFlavor: Flavor
    
    init() {
        var rnd = Util.rnd(101)
        switch rnd {
        case 0...39:
            preferredFlavor = Flavor.Acidic
        case 40...60:
            preferredFlavor = Flavor.Neutral
        default:
            preferredFlavor = Flavor.Diluted
        }
    }
    
    func likes(lemonade: Lemonade) -> Bool {
        return preferredFlavor == lemonade.flavor
    }
}