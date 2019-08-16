//
//  StarshipController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
class StarShipController {
    
    
    static func fetchShip(baseURL: String, completion: @escaping (StarShipObject?) -> Void) {
        //starting URL
        guard let baseURL = URL(string: baseURL) else {completion(nil); return}
        
        //create request
        let request = URLRequest(url: baseURL)
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            //gather the errors if any
            if let error = error {completion(nil); print(error.localizedDescription); return}
            //check the data
            guard let data = data else {completion(nil); return}
            do{
                let decoder = JSONDecoder()
                let starshipjson = try decoder.decode(StarShip.self , from: data)
                guard let star = StarShipObject(star: starshipjson) else {completion(nil); return}
                print(star)
                completion(star)
                return
            } catch {
                print("error in converting data -- \(error.localizedDescription) \n---\n \(error)")
                completion(nil)
                return
            }
            
            }.resume()
    }
}
