//
//  Weather.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

enum Weather: UInt32, Printable {
    case Cold, Mild, Warm
    
    static func randomize() -> Weather {
        var rnd = Util.rnd(3)
        switch (rnd) {
        case 0:
            return Cold
        case 1:
            return Mild
        default:
            return Warm
        }
    }
    
    var description: String {
        switch self {
        case Cold: return "Cold"
        case Mild: return "Mild"
        case Warm: return "Warm"
        }
    }
}