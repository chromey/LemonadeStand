//
//  Game.swift
//  LemonadeStand
//
//  Created by Christian Romeyke on 22/11/14.
//  Copyright (c) 2014 Christian Romeyke. All rights reserved.
//

import Foundation

struct Game {
    static var nextDaysWeather = Weather.randomize()
    static var lemonadeStand = LemonadeStand()

    static func startDay() -> String {
        let weather = nextDaysWeather
        if let lemonade = lemonadeStand.prepareLemonade() {
            println("Lemonade tastes \(lemonade.flavor.description) today, weather is \(weather.description)")
            var customers = createCustomers(weather)
            println("\(customers.count) are queueing up today")
            var satisfiedCustomers = 0
            for customer in customers {
                println("Customer prefers \(customer.preferredFlavor.description)")
                if customer.likes(lemonade) {
                    lemonadeStand.sellLemonade()
                    satisfiedCustomers++
                    println("Yay, customer bought one!")
                }
            }
            nextDaysWeather = Weather.randomize()
            return "\(satisfiedCustomers) out of \(customers.count) customers liked today'y \(lemonade.flavor.description) lemonade"
        } else {
            return "Not enough ingredients to prepare lemonade"
        }
    }
    
    static func reset() {
        lemonadeStand = LemonadeStand()
        nextDaysWeather = Weather.randomize()
    }
    
    static func createCustomers(weather: Weather) -> [Customer] {
        var customers: [Customer] = []
        var numberOfCustomers = Util.rnd(10, offset: 1)
        switch weather {
        case .Cold:
            numberOfCustomers -= 3
            if numberOfCustomers < 0 {
                numberOfCustomers = 0
            }
        case .Mild:
            // no changes necessary
            break
        case .Warm:
            numberOfCustomers += 4
        }
        for _ in 0..<numberOfCustomers {
            customers.append(Customer())
        }
        return customers
    }
}