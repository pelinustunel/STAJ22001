//
//  ChangeSetView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct ChangeSetView: View {
    
    
    var body: some View {
        
        
        
        List(changeListData, id: \.id) { changeSet in
            
            ChangeSetCardView(changeSet: changeSet)
        }
    }
    
}


#Preview {
    ChangeSetView()
}
