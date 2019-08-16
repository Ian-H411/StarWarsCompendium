//
//  CharacterTableViewCell.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var massLabel: UILabel!
    
    func update(character: CharacterObject){
        nameLabel.text = character.name
        genderLabel.text = character.gender
        heightLabel.text = character.height
        massLabel.text = character.mass
    }
    
    
}
