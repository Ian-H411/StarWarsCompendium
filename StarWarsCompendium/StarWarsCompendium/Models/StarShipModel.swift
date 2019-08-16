//
//  StarShipModel.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation

struct StarShipObject: Codable {

    let cargoCapacity: String
    let costInCredits: String
    let hyperDriveRating: String
    let length: String
    let manufacturer: String
    let maxAtmospheringSpeed: String
    let model: String
    let name: String
    let starShipClass: String
}
extension StarShipObject{
    init? (star: StarShip) {
    self.cargoCapacity = star.cargoCapacity
    self.costInCredits = star.costInCredits
    self.hyperDriveRating = star.hyperDriveRating
    self.length = star.length
    self.manufacturer = star.manufacturer
    self.maxAtmospheringSpeed = star.maxAtmospheringSpeed
    self.model = star.model
    self.name = star.name
    self.starShipClass = star.starShipClass
    }
}
