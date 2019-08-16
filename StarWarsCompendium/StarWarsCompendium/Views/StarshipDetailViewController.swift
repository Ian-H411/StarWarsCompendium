//
//  StarshipDetailViewController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class StarshipDetailViewController: UIViewController {
    //MARK: - outlets and landing pad
    var landingPad: StarShipObject?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var costInCredit: UILabel!
    
    @IBOutlet weak var cargoCapacityLabel: UILabel!
    
    @IBOutlet weak var hyperDriveLabel: UILabel!
    
    @IBOutlet weak var lengthLabel: UILabel!
    
    @IBOutlet weak var manufacLabel: UILabel!
    
    @IBOutlet weak var maxSpeedLabel: UILabel!
    
    @IBOutlet weak var modelLabel: UILabel!
    
    @IBOutlet weak var classLabel: UILabel!
    
    @IBOutlet weak var starshipPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let ship = landingPad else {return}
        nameLabel.text = ship.name
        costInCredit.text = ship.costInCredits
        cargoCapacityLabel.text = ship.cargoCapacity
        hyperDriveLabel.text = ship.hyperDriveRating
        lengthLabel.text = ship.length
        manufacLabel.text = ship.manufacturer
        maxSpeedLabel.text = ship.maxAtmospheringSpeed
        modelLabel.text = ship.model
        classLabel.text = ship.model
        starshipPic.image = UIImage(named: ship.name)
    }

}
