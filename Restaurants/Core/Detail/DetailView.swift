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
        VStack {
            Image(menu.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            
            Text(menu.name)
            
            Spacer()
        }
        
    }
}

#Preview {
    DetailView(menu: MenuItem(name: "Risotto with Gold Leaf",
                              imageName: "risotto_gold",
                              ingredients: ["Arborio rice", "chicken broth", "Parmigiano-Reggiano", "gold leaf", "white wine"],
                              description: "Creamy and rich risotto topped with a delicate gold leaf.",
                              isGlutenFree: true))
}
