//
//  ShopManager.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import Foundation

class ShopManager {
    static let shared = ShopManager()
    
    private(set) var cars = [Car]()
    private var cash = 0.0
    
    private init() { }
    
    func add(cars: [Car]) {
        self.cars.append(contentsOf: cars)
    }
    
    func sell(car index: Int, to client: Client) {
        if index >= cars.count || index < 0 {
            return
        }
        
        let car = cars[index]
        if client.wallet < car.price {
            print("(!) Bani insuficienti")
            return
        }
        
        client.extract(money: car.price)
        cash += car.price
        
        client.add(car: car)
        cars.remove(at: index)
    }
    
    func loadTestData() {
        add(cars: TestData.cars)
    }
}
