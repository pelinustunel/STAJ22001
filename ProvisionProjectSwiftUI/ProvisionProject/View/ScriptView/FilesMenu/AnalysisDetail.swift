//
//  AnalysisDetail.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 7.09.2024.
//

import SwiftUI

struct AnalysisDetail: View {
    var analysis : AnalysisSectionCard
    
    var body: some View {
        
        VStack{
            
            List(analysisSectionDataList, id: \.id) { analysisData in
                    
                   AnalysisCardView(analysis: analysisData)
                }
            }
        }
    }


#Preview {
    AnalysisDetail(analysis: analysisSectionCardData)
}
