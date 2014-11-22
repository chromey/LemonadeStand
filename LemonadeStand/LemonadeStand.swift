//
//  LemonadeStand.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

class LemonadeStand {
    var budget = 10
    var lemonsInInventory = 1
    var iceCubesInInventory = 1
    
    var lemonsInMix = 0
    var iceCubesInMix = 0
    
    func prepareLemonade() -> Lemonade? {
        if lemonsInMix < 1 || iceCubesInMix < 1 {
            return nil
        }
        var lemonade = Lemonade(numLemons: lemonsInMix, numIceCubes: iceCubesInMix)
        lemonsInMix = 0
        iceCubesInMix = 0
        return lemonade
    }
    
    func sellLemonade() {
        budget += 1
    }
    
    func addLemonToInventory() {
        if (budget >= 2) {
            lemonsInInventory++
            budget -= 2
        }
    }

    func addIceCubeToInventory() {
        if (budget >= 1) {
            iceCubesInInventory++
            budget -= 1
        }
    }
    
    func removeLemonFromInventory() {
        if (lemonsInInventory >= 1) {
            lemonsInInventory--
            budget += 2
        }
    }
    
    func removeIceCubeFromInventory() {
        if (iceCubesInInventory >= 1) {
            iceCubesInInventory--
            budget += 1
        }
    }
    
    func addLemonToMix() {
        if (lemonsInInventory >= 1) {
            lemonsInInventory--
            lemonsInMix++
        }
    }
    
    func removeLemonFromMix() {
        if (lemonsInMix >= 1) {
            lemonsInInventory--
            lemonsInMix++
        }
    }
    
    func addIceCubeToMix() {
        if (iceCubesInInventory >= 1) {
            iceCubesInInventory--
            iceCubesInMix++
        }
    }
    
    func removeIceCubesFromMix() {
        if (iceCubesInMix >= 1) {
            iceCubesInInventory--
            iceCubesInMix++
        }
    }
    
    
}