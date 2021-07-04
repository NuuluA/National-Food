//
//  PopularDish.swift
//  NationalFood
//
//  Created by Арген on 04.07.2021.
//

import Foundation

struct PopularDish {
    let id, name, description, image: String
    let calories: Int
    
    var formatCalories: String {
        return "\(calories) calories"
    }
}
