//
//  PipelineDetailView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct PipelineDetailView: View {
    
    var pipeline : PipelineCard
    
    var body: some View {
        
        Spacer()
        
        VStack {
            Text("PIPELINE")
                .headerText()
                .padding()
                .offset(x: -25)
            
            Text(pipeline.name2)
                .headerText()
                .foregroundStyle(.black)
                .opacity(0.7)
                .lineLimit(1)
                .offset(x: -5)
            
            Text(pipeline.name1)
                .subText()
                .foregroundStyle(.red)
                .lineLimit(1)
                .offset(x: -40)
            
            Text(pipeline.name)
                .subText()
                .foregroundStyle(.black)
                .opacity(0.7)
                .lineLimit(1)
            
        }.offset(x: -100)
        
        VStack{
            List(pipelineListData, id: \.id) { pipData in
                
                PipelineDetailCardView(pipeline: pipelineData)
                
            }
           
        }
        
        HStack{
            Button("History", action: history)
        }
        
    }
}

func history() {
    
}

#Preview {
    PipelineDetailView(pipeline: pipelineData)
}
