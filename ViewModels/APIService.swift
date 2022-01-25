//
//  Parser.swift
//  DrinksApp
//
//  Created by Thomas Garayua on 1/25/22.
//

import Foundation

struct APIService {
    
    func parse() {
        let api = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=rum")
        
        URLSession.shared.dataTask(with: api!) {
            data, response, error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            do {
                let result = try JSONDecoder().decode(DrinksData.self, from: data!)
                print(result)
            } catch {
                
            }
        }.resume()
    }
}
