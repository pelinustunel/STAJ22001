//
//  ScriptCardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct ScriptCardsView: View {
    
    var script : ScriptCard
    
    var body: some View {
        
        
        HStack{
            
            //Card tasarlanması
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .fill(Color(hex: "5CCAED"))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: "phone.fill")
                }
            VStack(alignment:.leading, spacing: 6) {
                Text(script.name)
                    .subText()
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .offset(x:-5)
                    
                
                Text(script.name1)
                    .headerText()
                    .foregroundStyle(.green)
                    .lineLimit(1)
                
            
                Text(script.name2)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(script.name3)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(script.name4)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(script.name5)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                
                Text(script.username)
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
                        .offset(y:15)
                    
                    Text(Date(), format: .dateTime.year().month().day())
                        .subSText()
                        .foregroundColor(.secondary)
                        .offset(y:25)
                }
                
            }
            
            
        }.padding([.top, .bottom], 8)
    }
}

#Preview {
    ScriptCardsView(script: scriptData)
}
