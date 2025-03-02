//
//  WelcomeView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            ARImageView()
            
            VStack(alignment: .center, spacing: 30) {
                Text("Watch movies in Virtual Reality")
                    .font(.system(size: 34, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Download and watch offline \nwherever you are")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                SignupButtonView()
            }
        }
    }
}

#Preview {
    WelcomeView()
        .preferredColorScheme(.dark)
}
