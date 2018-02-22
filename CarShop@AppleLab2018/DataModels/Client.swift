//
//  Client.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import Foundation

class Client {
    let username: String!
    private var password: String!
    
    private(set) var email: String!
    private(set) var wallet: Double = 0.0
    private(set) var cars = [Car]()
    
    init(username: String, password: String, cash: Double) {
        self.username = username
        self.password = password
        
        self.wallet = cash
    }
}

//MARK: - Logic

extension Client {
    func extract(money: Double) {
        wallet -= money
    }
    
    func hasCredentials(username: String?, password: String?) -> Bool {
        return self.username == username && self.password == password
    }
    
    func add(car: Car) {
        self.cars.append(car)
    }
}
