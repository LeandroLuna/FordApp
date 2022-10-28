//
//  Car.swift
//  FordPass
//
//  Created by Leandro Luna on 27/10/22.
//

import Foundation

struct Car{
    let model: String
    let photo: String
    let availableUpgrades: [String]
    
    init(model: String, photo: String, availableUpgrades: [String]) {
        self.model = model
        self.photo = photo
        self.availableUpgrades = availableUpgrades
    }
}
