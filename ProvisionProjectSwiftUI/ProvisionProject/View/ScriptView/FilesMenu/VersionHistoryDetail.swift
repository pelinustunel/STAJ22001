//
//  VersionHistoryDetail.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct VersionHistoryDetail: View {
    
    var version : VersionHistoryCard
    
    var body: some View {
        
        VStack{
            
            List(versionHistoryDataList, id: \.id) { versionData in
                    
                    VersionHistoryCardsView(version: versionData)
                }
            }
        }
    }


#Preview {
    VersionHistoryDetail(version: versionHistoryCardData)
}
