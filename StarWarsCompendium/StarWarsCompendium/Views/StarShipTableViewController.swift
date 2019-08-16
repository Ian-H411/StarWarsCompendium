//
//  StarShipTableViewController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class StarShipTableViewController: UITableViewController {
    
    var landingPad:[String]?
    
    var Starships:[StarShipObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .black
        if let strings = landingPad{
            for string in strings{
                StarShipController.fetchShip(baseURL: string) { (ship) in
                    guard let ship = ship else {return}
                    self.Starships.append(ship)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        
                    }
                }
            }
            
        }
    }
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Starships.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ship", for: indexPath)
        
        let ship = Starships[indexPath.row]
        cell.textLabel?.textColor = .yellow
        cell.textLabel?.text = ship.name
        
        return cell
    }
    
     // MARK: - Navigation
     
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tostarship"{
            if let indexpath = tableView.indexPathForSelectedRow{
                if let toStarShipVC = segue.destination as? StarshipDetailViewController {
                    let shipToSend = Starships[indexpath.row]
                    toStarShipVC.landingPad = shipToSend
                }
            }
        }
     }

    
}
