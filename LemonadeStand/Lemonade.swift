//
//  Lemonade.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

class Lemonade {
    let price = 1
    var numLemons, numIceCubes: Int
    var flavor: Flavor
    
    init(numLemons:Int, numIceCubes:Int) {
        self.numLemons = numLemons
        self.numIceCubes = numIceCubes
        
        switch numLemons {
        case let(x) where x > numIceCubes:
            flavor = Flavor.Acidic
        case let(x) where x < numIceCubes:
            flavor = Flavor.Diluted
        default:
            flavor = Flavor.Neutral
        }
    }
}