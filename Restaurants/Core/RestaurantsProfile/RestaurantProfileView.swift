//
//  RestaurantProfileView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import SwiftUI

struct RestaurantProfileView: View {
    var restaurant: Restaurant
    
    // Define la disposición del grid
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text(restaurant.name)
                    .font(.largeTitle)
                    .bold()
                
                Text(restaurant.summary)
                    .font(.headline)
                
                Text(restaurant.location)
                    .font(.subheadline)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(restaurant.menu, id: \.name) { menu in
                        NavigationLink(destination: DetailView(menu: menu)) {
                            Image(menu.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding()
        }
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RestaurantProfileView(restaurant: Restaurant(name: "Test", summary: "Test Summary", imageName: "lapergola", location: "Paris, France", latLong: "41.9140, 12.4546", menu: [MenuItem(name: "Risotto with Gold Leaf",
                                                                                                                                                                                        imageName: "risotto_gold",
                                                                                                                                                                                        ingredients: ["Arborio rice", "chicken broth", "Parmigiano-Reggiano", "gold leaf", "white wine"],
                                                                                                                                                                                        description: "Creamy and rich risotto topped with a delicate gold leaf.",
                                                                                                                                                                                        isGlutenFree: true),
                                                                                                                                                                               MenuItem(name: "Lobster Salad",
                                                                                                                                                                                        imageName: "lobster_salad",
                                                                                                                                                                                        ingredients: ["Lobster", "mixed greens", "avocado", "tomatoes", "olive oil"],
                                                                                                                                                                                        description: "Fresh lobster served with a vibrant salad dressed in a light olive oil.",
                                                                                                                                                                                        isGlutenFree: true),]))
}
