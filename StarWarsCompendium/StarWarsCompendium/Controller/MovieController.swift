//
//  MovieController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//
//acsess all films https://swapi.co/api/films/
import Foundation

class MovieController {
    //singleton
    static let shared = MovieController()
    //source of truth
//    var movieList: [Movie]?
    
    static func fetchMovie(completion: @escaping ([Movie]) -> Void) {
        //starting URL
        guard let baseURL = URL(string: "https://swapi.co/api/") else {completion([]); return}
        let filmURL = baseURL.appendingPathComponent("films")
            
            //create request
            let request = URLRequest(url: filmURL)
            
            URLSession.shared.dataTask(with: request) { (data, _, error) in
                //gather the errors if any
                if let error = error {completion([]); print(error.localizedDescription); return}
                //check the data
                guard let data = data else {completion([]); return}
                do{
                    let decoder = JSONDecoder()
                    let movieHead = try decoder.decode(MovieHead.self , from: data)
                    var movieList: [Movie] = []
                    for movie in movieHead.results{
                        if let newmovie = Movie(movieObject: movie) {
                        movieList.append(newmovie)
                        }
                    }
                    print(movieList)
                    completion(movieList)
                    return
                } catch {
                    print("error in converting data -- \(error.localizedDescription) \n---\n \(error)")
                    completion([])
                    return
                }
                
            }.resume()
        }
        
        
        
   
    
}



