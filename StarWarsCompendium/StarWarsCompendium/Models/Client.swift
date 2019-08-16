//
//  Movie.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation

struct MovieHead: Codable{
    var results: [MovieObject]
}

struct MovieObject: Codable{
    let title: String
    let episodeId: Int
    let openingCrawl: String
    let director: String

    let releaseDate: String
    let characters: [String]
    let planets: [String]
    let starships: [String]
    let vehicles: [String]
    let species: [String]
    
   private enum  CodingKeys: String, CodingKey {
        case title
        case episodeId = "episode_id"
        case openingCrawl = "opening_crawl"
        case director
        case releaseDate = "release_date"
        case characters
        case planets
        case starships
        case vehicles
        case species
    }
    
}
struct Character: Codable{
    
    let birthYear: String
    let eyeColor: String
    
    let gender: String
    let hairColor: String
    let height: String
    let mass: String
    let name: String
    let skinColor: String
    
    private enum CodingKeys: String, CodingKey{
        case skinColor = "skin_color"
        case hairColor = "hair_color"
        case birthYear = "birth_year"
        case eyeColor = "eye_color"
        case gender
        case height
        case mass
        case name
        
    }
    
}
