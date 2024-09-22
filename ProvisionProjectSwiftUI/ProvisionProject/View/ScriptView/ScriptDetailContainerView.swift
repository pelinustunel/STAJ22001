//
//  ScriptDetailContainerView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 21.07.2024.
//

import SwiftUI

struct ScriptDetailContainerView: View {
    
    @State private var selectedTopMenu = 0
    let segments = ["DETAILS", "FILES", "CHANGE SET"]
    
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
                scriptDetailView()
            } else if selectedTopMenu == 1{
                FilesList()
                
            } else {
                ChangeSetView()
            }
        }
    }
}

#Preview {
    ScriptDetailContainerView()
}
