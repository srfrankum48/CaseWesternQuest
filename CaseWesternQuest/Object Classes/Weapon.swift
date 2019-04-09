//
//  Weapon.swift
//  CaseWesternQuest
//
//  Created by Samantha Frankum on 4/9/19.
//  Copyright © 2019 Samantha Frankum. All rights reserved.
//

import Foundation

class Weapon : Item {
    
    // MARK: - Properties
    let strength: Int
    
    // MARK: - Initializers
    init(name: String, cost: Int, strength: Int) {
        self.strength = strength
        super.init(name: name, cost: cost)
    }
}

extension Weapon {
    static let Sword6Plus = Weapon(name: "Sword 6+", cost: 50, strength: 6)
}
