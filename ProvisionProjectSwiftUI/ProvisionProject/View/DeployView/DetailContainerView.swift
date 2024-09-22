//
//  DetailContainer.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct DetailContainerView: View {
    
    @State private var selectedTopMenu = 0
    let segments = ["DETAILS", "DESCRIPTION", "CHANGE SET"]
    
    
    var body: some View {
       
        
        // Menü
        
        VStack {
            Picker("Select", selection: $selectedTopMenu) {
                ForEach(0..<segments.count) { index in
                    Text(segments[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
        }
        
        
        VStack{
            if selectedTopMenu == 0 {
                DetailView()
            } else if selectedTopMenu == 1{
                DescriptionView()
            } else {
                ChangeSetView()
            }
        }
        
    }
}

#Preview {
    DetailContainerView()
}
