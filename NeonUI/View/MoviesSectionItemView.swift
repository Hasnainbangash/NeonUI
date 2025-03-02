//
//  MoviesSectionItemView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 02/03/2025.
//

import SwiftUI

struct MoviesSectionItemView: View {
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .frame(width: 136, height: 167)
            .rotationEffect(.degrees(5), anchor: .bottomTrailing)
    }
}

#Preview {
    MoviesSectionItemView(image: "image1")
}
