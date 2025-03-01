//
//  ARImageView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct ARImageView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(gradient)
                .frame(width: 338, height: 338)
            
            Circle()
                .fill(Color.black.opacity(0.4))
                .frame(width: 320, height: 320)
            
            Image("vrimage")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 470, height: 276)
                .offset(x: 20)
        }
    }
}

#Preview {
    ARImageView()
}
