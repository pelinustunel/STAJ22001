//
//  MainContentView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 24.07.2024.
//

import SwiftUI

enum Direction {
    case login
    case mainTab
    case splash
}

struct MainContentView: View {

//    var isActive : Bool = false
    @State private var direction: Direction = .splash

    
    var body: some View {
        switch(direction) {
        case .splash:
            SplashView(direction: $direction)
        case .login:
            LoginView(direction: $direction)
        case .mainTab:
            ContentView()
                .transition(.move(edge: .trailing))
        }
    }
}

#Preview {
    MainContentView()
}
