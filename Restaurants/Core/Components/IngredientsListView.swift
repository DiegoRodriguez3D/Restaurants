//
//  IngredientsListView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 30/8/24.
//

import SwiftUI

struct IngredientsListView: View {
    var ingredients: [String]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Ingredients")
                .font(.title)
                .bold()
                .padding(.horizontal)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(ingredients, id: \.self) { ingredient in
                        HStack {
                            Image(systemName: "leaf.fill")
                                .foregroundColor(.green)
                            Text(ingredient)
                        }
                        .padding(.all, 10)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .padding(.horizontal, 5)
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding()
    }
}


#Preview {
    IngredientsListView(ingredients: ["Ingredient", "Ingredient"])
}
