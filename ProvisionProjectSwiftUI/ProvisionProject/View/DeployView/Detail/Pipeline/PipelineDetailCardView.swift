//
//  PipelineDetailCardView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct PipelineDetailCardView: View {
    
    var pipeline : PipelineCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            //Card tasarlanması
            VStack(alignment:.leading, spacing: 6) {
                
                
                Text(pipeline.name3)
                    .font(.footnote)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                
                Text(pipeline.date)
                    .font(.footnote)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
            }
            
            // Tarih ve Chevron gösterilmesi
            HStack{
                VStack{
                    Text("Confirmed")
                        .subText()
                        .foregroundColor(.black)
                        .padding()
                        .padding()
                    
    
                }
                
            }
            
            
        }
        .padding([.top, .bottom], 8)
        
    }
}

#Preview {
    PipelineDetailCardView(pipeline: pipelineData)
}
