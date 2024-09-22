//
//  VersionHistoryCardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct VersionHistoryCardsView: View {
    
    var version : VersionHistoryCard
    
    var body: some View {
        
        HStack(spacing: 20){
            
            //Card tasarlanması
            VStack(alignment:.leading, spacing: 6) {
                Text(version.versionSegment)
                    .headerText()
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .offset(x:-5)
                
                
                Text(version.name)
                    .subText()
                    .lineLimit(1)
                
                Text(version.commet)
                    .subSText()
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
            }
            Spacer()
            
            Text(version.date)
                .subSText()
                .foregroundStyle(.black)
                .opacity(0.7)
                .lineLimit(1)
                .offset(y:25)
        }
        
        
    }
}

#Preview {
    VersionHistoryCardsView(version: versionHistoryCardData)
}
