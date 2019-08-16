////
////  StarshipController.swift
////  StarWarsCompendium
////
////  Created by Ian Hall on 8/15/19.
////  Copyright © 2019 Ian Hall. All rights reserved.
////
//
//import Foundation
//class StarShipController {
//    
//    
//    static func fetchMovie(baseURL: String, completion: @escaping ([StarShip]) -> Void) {
//        //starting URL
//        guard let baseURL = URL(string: baseURL) else {completion([]); return}
//        
//        //create request
//        let request = URLRequest(url: baseURL)
//        
//        URLSession.shared.dataTask(with: request) { (data, _, error) in
//            //gather the errors if any
//            if let error = error {completion([]); print(error.localizedDescription); return}
//            //check the data
//            guard let data = data else {completion([]); return}
//            do{
//                let decoder = JSONDecoder()
//                let starshipjson = try decoder.decode(StarshipsTopLevelDictionary.self , from: data)
//                let starships:[StarShip] = starshipjson.results
//                completion(starships)
//                return
//            } catch {
//                print("error in converting data -- \(error.localizedDescription) \n---\n \(error)")
//                completion([])
//                return
//            }
//            
//            }.resume()
//    }
//}
