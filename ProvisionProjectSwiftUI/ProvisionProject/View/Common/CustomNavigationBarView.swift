//
//  CustomNavigationBarView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 23.07.2024.
//

import SwiftUI
import SwiftUIX


struct CustomNavigationBarView: View {
    var body: some View {
        ZStack{
            Color.black // ZStack arka plan rengini siyah yapıyoruz
                .edgesIgnoringSafeArea(.all) // Tüm ekranı kaplamasını sağlıyoruz
            
            HStack{
                Image(uiImage: UIImage(named: "snowballicon.svg")!) // Logonuz burada olacak
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                
                Text("Snowball")
                    .splashText()
                
            }
        }.frame(height: 45)
    }
}

#Preview {
    CustomNavigationBarView()
}

