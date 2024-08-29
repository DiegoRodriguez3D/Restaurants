//
//  ContentView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import SwiftUI

struct RestaurantsView: View {
    @State var restaurants = [Restaurant]()
    var dataService = DataService()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(restaurants) { restaurant in
                    Text(restaurant.name)
                }
            }
            .padding()
            .onAppear {
                restaurants = dataService.getData()
            }
        }
    }
}

#Preview {
    RestaurantsView()
}
