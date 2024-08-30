//
//  MenuItem.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import Foundation

struct MenuItem: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var imageName: String
    var ingredients: [String]
    var description: String
    var isGlutenFree: Bool
}
