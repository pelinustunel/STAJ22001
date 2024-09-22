//
//  ChangeSetCardView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import SwiftUI

struct ChangeSetCardView: View {
    
    var changeSet : ChangeSetCard
    
    var body: some View {
        
       
            VStack(alignment:.leading, spacing: 6) {
                Text(changeSet.key)
                    .foregroundStyle(.red)
                    .bold()
                    .lineLimit(1)
                
                Text(changeSet.project)
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .opacity(0.7)
                    .lineLimit(1)
                
                ScrollView(.horizontal){
                    Text(changeSet.summary)
                        .font(.footnote)
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                }
                
            }.padding()
        
        
    }
}

#Preview {
    ChangeSetCardView(changeSet: changeSetData)
}
