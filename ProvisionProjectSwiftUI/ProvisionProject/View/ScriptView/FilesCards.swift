//
//  FilesCards.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct FilesCards: View {
    
    var filesCard : FilesCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            VStack(alignment:.leading, spacing: 6) {
                Text(filesCard.sql)
                    .subText()
                    .lineLimit(1)
                    .offset(x:-5)
                    
                
                Text(filesCard.version)
                    .subText()
                    .lineLimit(1)
                
            
                Text(filesCard.size)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(filesCard.status)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                
            }

            
            // Tarih ve Chevron gösterilmesi
            HStack{
                VStack{
                    Image(systemName: "chevron.right")
                        .foregroundColor(.blue)
                        .bold()
                        .offset(x:-50, y: 15)
                }
                
            }
        }
        .padding([.top, .bottom], 8)
        
    }
}

#Preview {
    FilesCards(filesCard: filesCardData)
}
