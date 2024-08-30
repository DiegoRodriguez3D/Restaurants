//
//  Restaurant.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import Foundation

struct Restaurant: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    var location: String
    var latLong: String
    var menu: [MenuItem]
}
