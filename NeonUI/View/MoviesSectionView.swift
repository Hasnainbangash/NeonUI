//
//  MoviesSectionView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 02/03/2025.
//

import SwiftUI

struct MoviesSectionView: View {
    
    var images: [Image] = [Image("image1"), Image("image2"), Image("image3")]
    
    var body: some View {
        Section(content: {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(images, id: \.self) { image in
                        MoviesSectionItemView(image: image)
                    }
                }
            }
        }, header: {
            Text("Popular View")
                .font(.system(size: 18, weight: .medium))
        })
    }
}

#Preview {
    MoviesSectionView()
}
