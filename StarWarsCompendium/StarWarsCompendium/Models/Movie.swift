//
//  Movie.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation

struct Movie: Codable{
    var title: String
    var episodeId: Int
    var openingCrawl: String
    var director: String

    var releaseDate: String
    var characters: [String]
    var planets: [String]
    var starships: [String]
    var vehicles: [String]
    var species: [String]
    
}
extension Movie{
    init?(movieObject: MovieObject){

        self.title = movieObject.title
        self.episodeId = movieObject.episodeId
        self.openingCrawl = movieObject.openingCrawl
        self.director = movieObject.director

        self.releaseDate = movieObject.releaseDate
        self.characters = movieObject.characters
        self.planets = movieObject.planets
        self.starships = movieObject.starships
        self.vehicles = movieObject.vehicles
        self.species = movieObject.species
    }
}
