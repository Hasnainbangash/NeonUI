//
//  ContentView.swift
//  NeonUI
//
//  Created by Muhammad Hasnain Bangash on 01/03/2025.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isMovingToHomeView") var isMovingToHomeView: Bool = false

    var body: some View {
        if isMovingToHomeView {
            HomeView()
        } else {
            WelcomeView()
        }
    }
}

#Preview {
    ContentView()
}
