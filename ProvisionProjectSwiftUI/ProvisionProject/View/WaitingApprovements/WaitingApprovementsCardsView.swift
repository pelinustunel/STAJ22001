//
//  WaitingApprovementsCardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct WaitingApprovementsCardsView: View {
    
    var waiting :  WaitingApprovementsCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .fill(Color(hex: "5CCAED"))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: "phone.fill")
                }
            VStack(alignment:.leading, spacing: 6) {
                Text(waiting.name)
                    .subText()
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .offset(x:-5)
                    
                
                Text(waiting.name1)
                    .subText()
                    .lineLimit(1)
                
            
                Text(waiting.name2)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(waiting.username)
                    .subSText()
                    .foregroundColor(.secondary)
                
            }
            
            HStack{
                VStack{
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(hex: "5CCAED"))
                        .padding()
                        .padding()
                    
                    Text(waiting.date)
                        .subSText()
                        .foregroundColor(.secondary)
                }
                
            }
            
            
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview {
    WaitingApprovementsCardsView(waiting: waitingApprovementsData)
}
