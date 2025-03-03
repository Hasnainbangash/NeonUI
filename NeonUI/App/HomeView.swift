//
//  HomeView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 02/03/2025.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("What would you like to watch?")
                .font(.system(size: 30, weight: .bold))
                .multilineTextAlignment(.center)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search", text: $searchText)
                    .foregroundColor(.white)
                    .textFieldStyle(PlainTextFieldStyle())
                
                Image(systemName: "mic.fill")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.black.opacity(0.3))
            .cornerRadius(12)
            .padding(.horizontal)
            
            MoviesSectionView(sectionName: "Popular Movies", images: ["image1", "image2", "image3"])
            
            MoviesSectionView(sectionName: "Upcoming Movies", images: ["image4", "image5", "image6"])
        }
    }
}

#Preview {
    HomeView()
}
