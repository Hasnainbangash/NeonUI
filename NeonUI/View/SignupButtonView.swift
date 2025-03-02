//
//  SignupButtonView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct SignupButtonView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        Button(action: {
            print("Sign up tapped!")
        }) {
            Text("Sign up")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black.opacity(0.7))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(gradient.opacity(isAnimating ? 1.0 : 0.3), lineWidth: 3)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimating)
                )
            
        }
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    SignupButtonView()
        .preferredColorScheme(.dark)
    
}
