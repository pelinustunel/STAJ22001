//
//  ListView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        // Navigation View
        NavigationStack{
            VStack{
                List(deployListData, id: \.id) { deployData in
                    ZStack{
                        NavigationLink(destination: DetailContainerView()){
                            EmptyView()
                            
                        }.opacity(0)
                        
                        CardsView(dp: deployData)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ListView()
}
