//
//  ScriptDetailView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 21.07.2024.
//

import SwiftUI

struct scriptDetailView: View {
    
    @State private var showingDetailViewPipeline = false
    @State private var showingDetailViewShowHistory = false
    @State private var showingDetailViewCancelRequest = false
    @State private var showingDetailViewChangeStatus = false
    
    var body: some View {
       
        // İşlemler menu
        HStack {
            Menu {
                Button {
                    showingDetailViewPipeline = true
                } label: {
                    Label("PP", systemImage: "rectangle.stack.badge.plus")
                        .headerLabel()
                }
                Button {
                    showingDetailViewShowHistory = true
                } label: {
                    Label("SS", systemImage: "folder.badge.plus")
                }
                Button {
                    showingDetailViewCancelRequest = true
                } label: {
                    Label("CC", systemImage: "rectangle.stack.badge.person.crop")
                }
                Button {
                    showingDetailViewChangeStatus = true
                } label: {
                    Label("CS", systemImage: "rectangle.stack.badge.person.crop")
                }
            } label: {
                Label("İşlemler", systemImage: "list.bullet")
            }
        }
        .offset(x: 140)
        .sheet(isPresented: $showingDetailViewPipeline) {
            PipelineView()
        }
        .sheet(isPresented: $showingDetailViewShowHistory) {
            //            DetailViewSh()
        }
        .sheet(isPresented: $showingDetailViewCancelRequest) {
            //            DetailViewCt()
        }
        .sheet(isPresented: $showingDetailViewChangeStatus) {
            //            DetailViewCt()
        }
        
        VStack {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.red)
                .opacity(0.5)
                .font(.title)
                .frame(width: 350, height: 40)
                .overlay {
                    HStack{
                        Image(systemName: "exclamationmark.triangle")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        Text("Product")
                            .informationText()
                    }
                    
                }
            HStack{
                Spacer()
                Text("CLOSE").warningText()
                Spacer().frame(width: 20)
            }.padding()
            
            
            
            ScrollView(.vertical) {
                
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("ID")
                            .headerText()
                        Text("\(DeployCard.ID.self)")
                            .subText()
                        
                            .padding()
                        
                        Text("Name")
                            .headerText()
                        Text("\(deployListData[1].name2)")
                            .subText()
                        
                            .padding()
                        
                        Text("Name3")
                            .headerText()
                        Text("\(deployListData[1].name3)")
                            .subText()
                        
                            .padding()
                        
                        Text("Name4")
                            .headerText()
                        Text("\(deployListData[1].name4)")
                            .subText()
                        
                            .padding()
                        
                        Text("UserName")
                            .headerText()
                        Text("\(deployListData[1].username)")
                            .subText()
                        
                            .padding()
                        
                        Text("Date")
                            .headerText()
                        Text("\(deployListData[1].date)")
                            .subText()
                        
                            .padding()
                        
                    }
                }
            }.padding()
                .offset(x: -50)
        }
        

        
    }
}

#Preview {
    scriptDetailView()
}
