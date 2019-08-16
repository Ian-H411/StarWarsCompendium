//
//  MovieDetalTableViewController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class MovieDetalTableViewController: UITableViewController {
    //MARK: - outlets
    
    var landingPad: Movie?
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var openingCrawl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.backgroundColor = .black
        tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    func updateView(){
        let movieDict = [ 1: "movie1", 2: "movie2", 3: "movie3", 4: "movie4", 5: "movie5", 6: "movie6", 7: "movie7"]
        guard let movie = landingPad else {return}
        if let movieString = movieDict[movie.episodeId]  {
            imageView.image = UIImage(named: movieString)
        }
        releaseDate.text = movie.releaseDate
        movieLabel.text = movie.title
        openingCrawl.text = movie.openingCrawl
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tocharacterdetail" {
            if let toDetailVC = segue.destination as? CharacterTableViewController {
                guard let movie = landingPad else {return}
                let stringsToSend =  movie.characters
                toDetailVC.landingPad = stringsToSend
            }
        } else {
            if segue.identifier == "tostarships"{
                if let toStarShipVC = segue.destination as? StarShipTableViewController{
                    guard let movie = landingPad else {return}
                    let stringsToSend = movie.starships
                    toStarShipVC.landingPad = stringsToSend
                }
            }
        }
    }
    
    
}
