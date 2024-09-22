//
//  FileAnalysisDetail.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct FileAnalysisDetail: View {
    
    var filesData : FilesAnalysisCard
    
    var body: some View {
        
        VStack{
            
            ScrollView(.vertical){
                
                
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("SELECT")
                            .headerText()
                        Text(filesData.select)
                            .subText()
                            .padding()
                            .padding()
                        
                        Text("INSERT")
                            .headerText()
                        Text(filesData.insert)
                            .subText()
                            .padding()
                            .padding()
                        
                        Text("UPDATE")
                            .headerText()
                        Text(filesData.update)
                            .subText()
                            .padding()
                            .padding()
                        
                        Text("DELETE")
                            .headerText()
                        Text(filesData.delete)
                            .subText()
                            .padding()
                            .padding()
                        
                        Text("EXECUTE")
                            .headerText()
                        Text(filesData.execute)
                            .subText()
                            .padding()
                            .padding()
                        
                        Text("CALL")
                            .headerText()
                        Text(filesData.call)
                            .subText()
                            .padding()
                            .padding()
                    }
                }
                
            }.frame(width: 100)
                .offset(x: -100)
           
        }
    }
}

#Preview {
    FileAnalysisDetail(filesData: filesAnalysisCardData)
}
