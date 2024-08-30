//
//  DataService.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import Foundation

struct DataService {
    
    //Gets data from a JSON file
    func getData() -> [Restaurant] {
        //Gets path to file
        if let url = Bundle.main.url(forResource: "RestaurantData", withExtension: "json") {
            
            do {
                //Reads data from file
                let data = try Data(contentsOf: url)
                
                //Parse data to JSON
                let decoder = JSONDecoder()
                
                do {
                    let restaurants = try decoder.decode([Restaurant].self, from: data)
                    return restaurants
                }
                catch {
                    print("Coudn't parse to JSON: \(error)")
                }
            }
            catch {
                print("Error trying to read the file: \(error)")
            }
        }
        
        return [Restaurant]()
    }
}
