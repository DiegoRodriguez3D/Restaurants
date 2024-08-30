//
//  GlutenView.swift
//  Restaurants
//
//  Created by Diego Rodriguez on 30/8/24.
//

import SwiftUI

struct GlutenView: View {
    var isGlutenFree: Bool
    
    var body: some View {
        HStack {
            Image(systemName: isGlutenFree ? "checkmark.seal.fill" : "exclamationmark.triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(isGlutenFree ? .green : .yellow)
            
            Text(isGlutenFree ? "Gluten Free" : "Gluten")
                .font(.footnote)
                .fontWeight(.bold)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 8)
        .background(Color.black.opacity(0.5))
        .cornerRadius(12)
        .foregroundColor(.white)
    }
}


#Preview {
    GlutenView(isGlutenFree: true)
}
