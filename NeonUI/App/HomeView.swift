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
        VStack {
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
        }
    }
}

#Preview {
    HomeView()
}
