//
//  SignupButtonView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct SignupButtonView: View {
    var body: some View {
        Button(action: {
            print("Sign up tapped!")
        }) {
            Text("Sign up")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(gradient, lineWidth: 3)
                )
        }
    }
}

#Preview {
    SignupButtonView()
        .preferredColorScheme(.dark)
}
