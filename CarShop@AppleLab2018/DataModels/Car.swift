//
//  Car.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import UIKit
import Foundation

class Car {
    let model: String!
    let power: Double!
    let date: Date!
    
    var color: UIColor!
    
    private(set) var image: UIImage!
    private(set) var price: Double!
    
    init(model: String, power: Double, price: Double, image: UIImage = #imageLiteral(resourceName: "img-placeholder"), color: UIColor = .black) {
        self.model = model
        self.power = power
        self.price = price
        
        self.color = color
        self.image = image
        
        self.date = Date()
    }
}
