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
        NavigationStack{
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(restaurants) { restaurant in
                        NavigationLink {
                            RestaurantProfileView(restaurant: restaurant)
                        } label: {
                            RestaurantCardView(restaurant: restaurant)
                                .padding(.bottom, 10)
                        }
                    }
                    .padding(.horizontal)
                }
                .ignoresSafeArea()
                .onAppear {
                    restaurants = dataService.getData()
                }
            }
            
        }
    }
}

#Preview {
    RestaurantsView()
}
