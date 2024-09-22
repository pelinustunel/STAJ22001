//
//  textExtension.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 18.07.2024.
//

import Foundation
import SwiftUI

extension Text {
    
    func informationText() -> some View {
        self.font(.custom("SFPro-Bold", size: 24))
    }
    
    func splashText() -> some View {
       
        return self.foregroundStyle(Color(hex: "7B7B7B")).font(.custom("SFPro-Bold", size: 28))
    }
    
    func headerText() -> some View {
        
        self.font(.custom("SFPro-Bold", size: 18))
        
    }
    
    func subText() -> some View {
        
        self.font(.custom("SFPro", size: 16))
           
                
    }
    
    func subSText() -> some View {
        self.font(.custom("SFPro", size: 14))
//            .foregroundColor(Color(hex: "CFE1E6")) 
    }
    
    func warningText() -> some View {
            self
                .font(.custom("SFPro-Bold", size: 18))
                .foregroundStyle(.red)
        }
    
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00ff00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000ff) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}


