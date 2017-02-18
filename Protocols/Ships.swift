//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

enum Direction {
    
    case north, south, east, west
    
}

protocol SteerAbility {
    
    var direction: Direction { get set }
    
    mutating func steerInDirection(_ direction: Direction)
}

extension SteerAbility {
    
    mutating func steerInDirection(_ direction: Direction) {
        self.direction = direction
    }
    
}

class SailBoat: SteerAbility {
    internal var direction: Direction = .north
}

class RowBoat: SteerAbility {
    internal var direction: Direction = .north
}

class SteamBoat: SteerAbility {
    internal var direction: Direction = .north

    
}
