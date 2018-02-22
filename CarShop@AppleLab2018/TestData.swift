//
//  TestData.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import Foundation

// TEMA:
//
// De rezolvat bug-urile:
//      1. Preturile sunt afisate cu Optional(). Cum fixam asta?
//      2. Nu se poate face clar diferenta intre My Cars si Shop. Am putea schimba titlul Navigation Bar-ului?
//      3. Cand sunt in ecranul "My Cars" ar fi util sa nu mai pot selecta masini
//      4. Daca apas pe butonul 'My Cars' nu pot reveni la ecranul "Shop". Cum am putea fixa asta?
//
//

class TestData {
    class var cars: [Car] {
        let bmwi8 = Car(model: "BMW i8 din 2016", power: 2400, price: 7500, image: #imageLiteral(resourceName: "bmw-i8-front"), color: .white)
        let logan = Car(model: "Dacia Logan 2006", power: 600, price: 1200, image: #imageLiteral(resourceName: "logan"), color: .white)
        let seat = Car(model: "Seatu' lui Mihai", power: 9000, price: 12000)
        let bmwi8black = Car(model: "BMW i8 din 2016", power: 2400, price: 7500, image: #imageLiteral(resourceName: "bmwi8b"))
        
        return [bmwi8, logan, seat]
    }
    
    class var clients: [Client] {
        let client1 = Client(username: "mariusjcb", password: "mypassword123", cash: 50000.0)
        let client2 = Client(username: "vasi", password: "123456", cash: 1100.0)
        let client3 = Client(username: "mihai", password: "gurau", cash: 7800.0)
        
        return [client1, client2, client3]
    }
}
