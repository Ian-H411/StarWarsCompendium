//
//  MovieTableViewCell.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var moviePic: UIImageView!
    
    func update(movie:Movie){
        let movieDict = [ 1: "movie1", 2: "movie2", 3: "movie3", 4: "movie4", 5: "movie5", 6: "movie6", 7: "movie7"]
        self.backgroundColor = .black
        movieLabel.text = movie.title
        if let movienum = movieDict[movie.episodeId] {
        moviePic.image = UIImage(named: movienum)
        }
    }
}
