//
//  FilesDetailContainerView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 21.07.2024.
//

import SwiftUI

struct FilesDetailContainerView: View {
    
    @State private var selectedTopMenu = 0
    let segments = ["File Content", "Confirmation", "File Analysis", "Version Hıstory", "Upload New Version", "Environment Variables"]
    
    
    
    var body: some View {
        
        // Menü
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Picker("Select", selection: $selectedTopMenu) {
                        ForEach(0..<segments.count) { index in
                            Text(segments[index])
                                .tag(index)
                            // Her segmentin genişliğini ayarlamak için
                                .frame(width: 100)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding()
            }
            
            
            
            VStack{
                if selectedTopMenu == 0 {
                    FilesContentView()
                } else if selectedTopMenu == 1{
                    ConfirmationCardsView(confirmation: confirmationCardData)
                    
                } else if selectedTopMenu == 2{
                    FileAnalysisDetail(filesData: filesAnalysisCardData)
                    
                } else if selectedTopMenu == 3{
                    VersionHistoryDetail(version: versionHistoryCardData)
                    
                }else if selectedTopMenu == 4{
                    UploadNewVersionDetailView()
                    
                }else {
                    AnalysisDetail(analysis: analysisSectionCardData)
                }
            }
            
            Spacer()
            
            
            
        }
    }
}



#Preview {
    FilesDetailContainerView()
}
