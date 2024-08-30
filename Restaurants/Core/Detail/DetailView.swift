//
//  DetailView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 29/8/24.
//

import SwiftUI

struct DetailView: View {
    var menu: MenuItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ZStack {
                    GeometryReader { geometry in
                        Image(menu.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                            .cornerRadius(4)
                    }
                    .frame(height: 300)
                    
                    VStack {
                        HStack {
                            Spacer()
                            
                            GlutenView(isGlutenFree: menu.isGlutenFree)
                        }
                        .padding()
                        
                        Spacer()
                    }
                }
                
                Text(menu.description)
                    .font(.headline)
                    .padding()
                
                Divider()
                
                IngredientsListView(ingredients: menu.ingredients)
                
                Spacer()
            }
        }
        .navigationTitle(menu.name)
        .navigationBarTitleDisplayMode(.large)
        
    }
}

#Preview {
    DetailView(menu: MenuItem(name: "Risotto with Gold Leaf",
                              imageName: "risotto_gold",
                              ingredients: ["Arborio rice", "chicken broth", "Parmigiano-Reggiano", "gold leaf", "white wine"],
                              description: "Creamy and rich risotto topped with a delicate gold leaf.",
                              isGlutenFree: true))
}
