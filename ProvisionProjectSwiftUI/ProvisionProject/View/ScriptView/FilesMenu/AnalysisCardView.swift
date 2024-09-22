//
//  AnalysisCardView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 7.09.2024.
//

import SwiftUI

struct AnalysisCardView: View {
    var analysis : AnalysisSectionCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            //Card tasarlanması
            VStack(alignment:.leading, spacing: 6) {
                Text(analysis.versionSegment)
                    .headerText()
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .offset(x:-5)
                
                
                Text(analysis.name)
                    .subText()
                    .lineLimit(1)
                
                Text(analysis.commet)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
            }
            Spacer()
            
            Text(analysis.date)
                .subSText()
                .foregroundStyle(.black)
                .opacity(0.7)
                .lineLimit(1)
                .offset(y:25)
        }
        
        
    }
}

#Preview {
    AnalysisCardView(analysis: analysisSectionCardData)
}
