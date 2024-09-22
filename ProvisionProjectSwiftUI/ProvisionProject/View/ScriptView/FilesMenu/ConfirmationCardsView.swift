//
//  ConfirmationCardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct ConfirmationCardsView: View {
    
    var confirmation : ConfirmationCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            Spacer()
            
            VStack(alignment:.leading, spacing: 6) {
                
                Text("File Name")
                    .headerText()
                
                ScrollView(.horizontal){
                    
                    Text(confirmation.fileName)
                        .subText()
                        .lineLimit(1)
                        .offset(x:-5)
                        .padding()
                }
                
                
                Text("Version")
                    .headerText()
                Text(confirmation.size)
                    .subText()
                    .lineLimit(1)
                    .padding()
                
                
                Text("Size")
                    .headerText()
                Text(confirmation.status)
                    .subText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                    .padding()
                
                HStack{
                    Text("Status")
                        .headerText()
                    Text(confirmation.version)
                        .subText()
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                        .padding()
                    
                    //Card tasarlanması
                    RoundedRectangle(cornerRadius:30, style: .continuous)
                        .fill(Color.green.opacity(0.3))
                        .frame(width: 120, height: 30)
                        .overlay{
                            Text("Change Status")
                                .subText()
                            
                        }.offset(x:100)
                        
                }
                
                
            }
            
            
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview {
    ConfirmationCardsView(confirmation: confirmationCardData)
}
