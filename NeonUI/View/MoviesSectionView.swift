//
//  MoviesSectionView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 02/03/2025.
//

import SwiftUI

struct MoviesSectionView: View {
    
    var sectionName: String
    var images: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(sectionName)
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(Color.secondary)
                .padding()
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images, id: \.self) { image in
                        MoviesSectionItemView(image: image)
                    }
                }
            }
        }
    }
}

#Preview {
    MoviesSectionView(sectionName: "Popular Movies", images: ["image1", "image2", "image3"])
}
