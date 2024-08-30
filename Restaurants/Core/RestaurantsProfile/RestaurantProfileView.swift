//
//  RestaurantProfileView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import SwiftUI

struct RestaurantProfileView: View {
    var restaurant: Restaurant
    
    let columns: [GridItem] = [
         GridItem(.flexible(), spacing: 10),
         GridItem(.flexible(), spacing: 10),
         GridItem(.flexible(), spacing: 10)
     ]
    
    // Launch Maps with restaurant location
    func launchMaps() {
        let latLon = restaurant.latLong.split(separator: ",")
        guard let lat = latLon.first, let lon = latLon.last,
              let url = URL(string: "maps://?ll=\(lat),\(lon)&q=\(restaurant.name.replacingOccurrences(of: " ", with: "+"))") else {
            return
        }
        
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url)
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(restaurant.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                VStack(alignment: .leading) {
                    
                    Text(restaurant.summary)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text(restaurant.location)
                        .font(.subheadline)
                }
                .padding(.horizontal)
                
                HStack {
                    Spacer()
                    
                    Button(action: launchMaps) {
                        HStack {
                            Image(systemName: "map.fill")
                            Text("Take me there!")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    .padding()
                    
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    Text("Menu")
                        .font(.title)
                        .bold()
                        .padding(.top)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(restaurant.menu, id: \.name) { menu in
                            NavigationLink(destination: DetailView(menu: menu)) {
                                VStack {
                                    Image(menu.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 100)
                                        .clipped()
                                        .cornerRadius(10)
                                        .shadow(radius: 3)
                                    Text(menu.name)
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                        .lineLimit(1)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .navigationTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.large)
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
