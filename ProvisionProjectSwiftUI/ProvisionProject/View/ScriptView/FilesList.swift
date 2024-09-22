//
//  FilesList.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct FilesList: View {
    
    @State private var filesNavigationPath = NavigationPath()
    
    var body: some View {
        
        
        
        // Navigation View
        NavigationView{
            VStack{
                List(filesCardList, id: \.id) { fileData in
                    ZStack{
                        NavigationLink(destination: FilesDetailContainerView()){
                            EmptyView()
                            
                        }.opacity(0)
                        
                        FilesCards(filesCard: fileData)
                    }
                }
            }
            
        }
    }
}


#Preview {
    FilesList()
}
