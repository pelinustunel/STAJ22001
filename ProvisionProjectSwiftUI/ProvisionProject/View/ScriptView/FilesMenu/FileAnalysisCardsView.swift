//
//  FileAnalysisCardsView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct FileAnalysisCardsView: View {
    
    var fileData : FilesAnalysisCard
    @State private var files : [[FilesAnalysisCard]] = [
    [FilesAnalysisCard(select: "SELECT", insert: "INSERT", update: "UPDATE", delete: "DELETE", execute: "EXECUTE", call: "CALL"), FilesAnalysisCard(select: "0", insert: "0", update: "707", delete: "0", execute: "0", call: "0")]
    
    ]
    
    
    var body: some View {
        
        
        ScrollView{
            Spacer()
            VStack(spacing: 20){
                
                //Card tasarlanması
                VStack(alignment:.leading, spacing: 6) {
                    
                    Text("SELECT")
                        .headerText()
                    
                    
                    Text(fileData.select)
                        .subText()
                        .lineLimit(1)
                        .offset(x:-5)
                        .padding()
                    
                    
                    Text("INSERT")
                        .headerText()
                    Text(fileData.insert)
                        .subText()
                        .lineLimit(1)
                        .padding()
                    
                    Text("UPDATE")
                        .headerText()
                    Text(fileData.update)
                        .subSText()
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                        .padding()
                    
                    
                    Text("DELETE")
                        .headerText()
                    Text(fileData.delete)
                        .subSText()
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                        .padding()
                    
                    
                    Text("EXECUTE")
                        .headerText()
                    Text(fileData.execute)
                        .subSText()
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                        .padding()
                    
                    
                    Text("CALL")
                        .headerText()
                    Text(fileData.call)
                        .subSText()
                        .foregroundStyle(.black)
                        .opacity(0.7)
                        .lineLimit(1)
                        .padding()
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    FileAnalysisCardsView(fileData: filesAnalysisCardData)
}
