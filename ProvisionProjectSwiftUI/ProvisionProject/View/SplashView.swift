//
//  SplashView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI

struct SplashView: View {
    
    @Binding var direction: Direction
        
    var body: some View {
        
        ZStack {
            
            Color(hex: "000000") 
                .edgesIgnoringSafeArea(.all)
            
            Image(uiImage: UIImage(named: "snowballicon.svg")!)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .foregroundColor(.white)
                .offset(x:-20, y: -60)
            
            
            VStack{
                Text("Snowball")
                    .splashText()
                    .foregroundStyle(Color(hex: "7B7B7B"))
                    .bold()
            }.offset(y: 70)
            
            Image(uiImage: UIImage(named: "provision_logo.svg")!)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .offset(x: -5, y: 300)
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                direction = .login
            }
        }
    }
}

#Preview {
    SplashView(direction: Binding.constant(.splash))
}
