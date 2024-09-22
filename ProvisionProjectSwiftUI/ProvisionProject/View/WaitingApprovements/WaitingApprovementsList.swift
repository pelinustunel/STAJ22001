//
//  WaitingApprovementsList.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct WaitingApprovementsList: View {
    var body: some View {
        
        
        // Navigation View
        NavigationStack{
            VStack {
                
                List(waitingListData, id: \.id) { waitingData in
                    
                    WaitingApprovementsCardsView(waiting: waitingData)
                    
                }
            }
        }
    }
}


#Preview {
    WaitingApprovementsList()
}
