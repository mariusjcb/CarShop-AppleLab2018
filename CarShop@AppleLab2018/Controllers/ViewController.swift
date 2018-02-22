//
//  ViewController.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import UIKit

private let SsegueToShopController = "segueToShopController"

class ViewController: UIViewController {
    @IBOutlet private weak var usernameField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    
    @IBAction func loginDidTap() {
        if AccountManager.shared.login(withUsername: usernameField.text, password: passwordField.text) {
            performSegue(withIdentifier: SsegueToShopController, sender: nil)
        } else {
            print("(!) Date Incorecte")
        }
    }
}
