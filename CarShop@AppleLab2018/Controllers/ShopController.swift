//
//  ShopController.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import UIKit

private let CarCellID = "carCell"

class ShopController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private var isShop = true

    @IBOutlet private weak var carsTableView: UITableView!
    
    @IBAction func logoutDidTap() {
        AccountManager.shared.logout()
        self.dismiss(animated: true)
    }
    
    @IBAction func myCarsDidTap() {
        isShop = false
        carsTableView.reloadData()
    }
    
    //MARK: - TableViewDataSource & Delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isShop {
            return ShopManager.shared.cars.count
        } else {
            return AccountManager.shared.loggedinClient!.cars.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 295
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarCellID, for: indexPath) as! CarTableViewCell
        
        if isShop {
            let car = ShopManager.shared.cars[indexPath.row]
            cell.load(car)
        } else {
            let car = AccountManager.shared.loggedinClient!.cars[indexPath.row]
            cell.load(car)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let client = AccountManager.shared.loggedinClient!
        ShopManager.shared.sell(car: indexPath.row, to: client)
        
        tableView.reloadData()
    }
}
