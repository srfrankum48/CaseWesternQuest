//
//  Item.swift
//  CaseWesternQuest
//
//  Created by Samantha Frankum on 4/9/19.
//  Copyright © 2019 Samantha Frankum. All rights reserved.
//

import Foundation

class Item {
    
    // MARK: - Properties
    let name: String
    let cost: Int
    
    // MARK: - Initializers
    init(name: String, cost: Int) {
        self.cost = cost
        self.name = name
    }
}
