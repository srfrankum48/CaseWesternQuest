//
//  Store.swift
//  CaseWesternQuest
//
//  Created by Samantha Frankum on 4/9/19.
//  Copyright © 2019 Samantha Frankum. All rights reserved.
//

import Foundation

class Store {
    
    // MARK: - Properties
    let name: String
    var inventory: [Item]
    
    // MARK: - Initializers
    init(name: String, items: [Item]) {
        self.name = name
        self.inventory = items
    }
}

extension Store {
    static let AppleStore = Store(name: "The \"Fruit\" Store", items: [Weapon.Sword6Plus])
}
