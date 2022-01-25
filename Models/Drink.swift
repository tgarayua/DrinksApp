//
//  Drink.swift
//  DrinksApp
//
//  Created by Thomas Garayua on 1/25/22.
//

import Foundation

struct Root : Codable {
    let drinks : [Drink]
}

struct Drink : Codable {
    let strDrink, strDrinkThumb, idDrink: String
}
