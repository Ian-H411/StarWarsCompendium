//
//  CharacterController.swift
//  StarWarsCompendium
//
//  Created by Ian Hall on 8/15/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation


import Foundation

class CharacterController {
    
    
    static func fetchAllPeople(characterurl: String, completion: @escaping (CharacterObject?) -> Void) {
    
        guard let finalUrl = URL(string: characterurl) else {completion(nil) ; return}

        let request = URLRequest(url: finalUrl)
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            //gather the errors if any
            if let error = error {completion(nil); print(error.localizedDescription); return}
            //check the data
            guard let data = data else {completion(nil) ; return}
            do{
                let decoder = JSONDecoder()
                let characterjson = try decoder.decode(Character.self , from: data)
                guard let newCharacter = CharacterObject(character: characterjson) else {completion(nil) ; return}
                print(newCharacter)
                completion(newCharacter)
                return
            } catch {
                print("error in converting data -- \(error.localizedDescription) \n---\n \(error)")
                completion(nil)
                return
            }
            
            }.resume()
    }
    
    
    
    
    
}

