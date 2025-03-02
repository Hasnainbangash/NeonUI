//
//  ARImageView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct ARImageView: View {
    
    @State private var rotation: Double = 0
    
    var animatedGradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(colors:[
                Color("ColorPink"),
                Color("ColorLightBlue"),
                Color("ColorLightGreen"),
                Color("ColorPink")
            ]),
            center: .center,
            angle: .degrees(rotation)
        )
    }
    
    var body: some View {
        ZStack {
            // Animated Gradient Border
            Circle()
                .stroke(animatedGradient, lineWidth: 6)
                .frame(width: 350, height: 350)
                .onAppear {
                    withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                }
            
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
        .preferredColorScheme(.dark)
}
