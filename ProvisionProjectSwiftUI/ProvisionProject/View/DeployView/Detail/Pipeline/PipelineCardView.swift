//
//  PipelineCardView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct PipelineCardView: View {
    
    var dp : DeployCard
    
    var body: some View {
        HStack(spacing: 20){
            
            //Card tasarlanması
            RoundedRectangle(cornerRadius:30, style: .continuous)
                .fill(Color(hex: "5CCAED"))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: "phone.fill")
                }
            
            VStack(alignment:.leading, spacing: 6) {
                
                Text(dp.name1)
                    .headerText()
                    .foregroundStyle(.red)
                    .lineLimit(1)
                
                
                Text(dp.name3)
                    .font(.footnote)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
            }
            
            // Tarih ve Chevron gösterilmesi
            HStack{
                VStack{
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(hex: "5CCAED"))
                        .padding()
                        .padding()
                
                }
            }
        }
        .padding([.top, .bottom], 8)
        
    }
}

#Preview {
    PipelineCardView(dp: deployData)
}
