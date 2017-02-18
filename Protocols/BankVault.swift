//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    
    func allowEntryWithPassword (_: [Int]) -> Bool
    
}


class BankVault: ProvideAccess {
    
    
    internal func allowEntryWithPassword(_ password: [Int]) -> Bool {
        guard !password.isEmpty || password.count < 11 else {return false}
        
        for digit in password {
            if digit%2 != 0 {
                return false
            } else {
                return true
            }
        }
        return false
    }

    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}





