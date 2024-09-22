//
//  CardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI

struct CardsView: View {
    
    var dp : DeployCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            //Card tasarlanması
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .fill(Color(hex: "5CCAED"))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: "house.fill")
                }
         
            VStack(alignment:.leading, spacing: 6) {
                Text(dp.name)
                    .subText()
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .offset(x:-5)
                    
                
                Text(dp.name1)
                    .headerText()
                    .foregroundStyle(.red)
                    .lineLimit(1)
                
            
                Text(dp.name2)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(dp.name3)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(dp.name4)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(dp.username)
                    .subSText()
                    .foregroundColor(.secondary)
                
            }
            
            // Tarih ve Chevron gösterilmesi
            HStack{
                VStack{
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(hex: "5CCAED"))
                        .padding()
                        .padding()
                        
                    
                    Text(Date(), format: .dateTime.year().month().day())
                        .subSText()
                        .foregroundColor(.secondary)
                        .offset(y:15)
                }
                
            }
            
            
        }
        .padding([.top, .bottom], 8)
        
    }
}

#Preview {
    CardsView(dp: deployData)
}


