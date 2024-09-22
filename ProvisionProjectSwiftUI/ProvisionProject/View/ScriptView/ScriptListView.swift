//
//  ScriptListView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct ScriptListView: View {
    var body: some View {
        
        
        // Navigation View
        NavigationStack{
            VStack{
                List(scriptListData, id: \.id) { scriptData in
                    ZStack{
                        NavigationLink(destination: ScriptDetailContainerView()){
                            EmptyView()
                            
                        }.opacity(0)
                        
                        ScriptCardsView(script: scriptData)
                    }
                }
            }
        }

    }
}

#Preview {
    ScriptListView()
}
