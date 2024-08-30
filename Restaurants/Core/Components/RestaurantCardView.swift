//
//  RestaurantCardView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 30/8/24.
//

import SwiftUI

struct RestaurantCardView: View {
    var restaurant: Restaurant
    
    var body: some View {
        ZStack {
            

            
            Rectangle()
                .background {
                    Image(restaurant.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .foregroundStyle(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundStyle(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                
                Text(restaurant.name)
                    .font(.largeTitle)
                    .bold()
                    
                
                Spacer()
                
                Text(restaurant.summary)
                    .multilineTextAlignment(.leading)
                
            }
            .padding()
            .foregroundStyle(.white)
            
            
        }
        .frame(height: 350)
    }
}

#Preview {
    RestaurantCardView(restaurant: Restaurant(name: "Test", summary: "Test Summary", imageName: "lapergola", location: "Paris, France", latLong: "41.9140, 12.4546", menu: [MenuItem(name: "Risotto with Gold Leaf",
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
