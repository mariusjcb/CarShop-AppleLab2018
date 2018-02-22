//
//  AccountManager.swift
//  CarShop@AppleLab2018
//
//  Created by Marius Ilie on 11/01/2018.
//  Copyright © 2018 Marius Ilie. All rights reserved.
//

import Foundation

class AccountManager {
    static let shared = AccountManager()
    
    private(set) var loggedinClient: Client?
    private var registeredUsers = [Client]()
    
    private init() { }
    
    func login(withUsername username: String?, password: String?) -> Bool {
        for client in registeredUsers {
            if client.hasCredentials(username: username, password: password) {
                loggedinClient = client
                return true
            }
        }
        
        loggedinClient = nil
        return false
    }
    
    func logout() {
        loggedinClient = nil
    }
    
    func loadTestData() {
        registeredUsers.append(contentsOf: TestData.clients)
    }
}
