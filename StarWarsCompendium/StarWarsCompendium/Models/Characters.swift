//
//  Characters.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation

struct CharacterObject: Codable{
    
    let birthYear: String
    let eyeColor: String
    
    let gender: String
    let hairColor: String
    let height: String
    let mass: String
    let name: String
    let skinColor: String
    
    
}
extension CharacterObject {
    init?(character: Character){
        self.birthYear = character.birthYear
        self.eyeColor = character.eyeColor
        
        self.gender = character.gender
        self.hairColor = character.hairColor
        self.height = character.height
        self.mass = character.mass
        self.name = character.name
        self.skinColor = character.skinColor
    }
}
