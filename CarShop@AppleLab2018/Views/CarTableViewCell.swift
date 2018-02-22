//
//  CarTableViewCell.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    @IBOutlet private weak var carImage: UIImageView!
    @IBOutlet private weak var carTitle: UILabel!
    @IBOutlet private weak var carPrice: UILabel!
    
    func load(_ car: Car) {
        self.carImage.image = car.image
        self.carTitle.text = car.model
        self.carPrice.text = "\(car.price) USD"
    }
}
