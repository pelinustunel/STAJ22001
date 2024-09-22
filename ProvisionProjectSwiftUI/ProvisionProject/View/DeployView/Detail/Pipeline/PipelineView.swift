//
//  PipelineView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct PipelineView: View {
    var body: some View {
        
        // Navigation View
        NavigationView{
            VStack{
                List(deployListData, id: \.id) { deployData in
                    ZStack{
                        NavigationLink(destination: PipelineDetailView(pipeline: pipelineData)){
                            EmptyView()
                            
                        }.opacity(0)
                        
                        PipelineCardView(dp: deployData)
                    }
                }
            }
        }

    }
}

#Preview {
    PipelineView()
}
