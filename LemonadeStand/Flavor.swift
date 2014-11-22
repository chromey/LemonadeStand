//
//  Flavor.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

enum Flavor: Printable {
    case Acidic, Neutral, Diluted
    
    var description: String {
        switch self {
        case Acidic:
            return "Acidic"
        case Neutral:
            return "Neutral"
        case Diluted:
            return "Diluted"
        }
    }
}