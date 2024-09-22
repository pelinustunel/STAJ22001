//
//  ContentView.swift
//  OnBoardSwiftUI
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        for baseName in UIFont.familyNames {
            print(baseName)
            for fontName in UIFont.fontNames(forFamilyName: baseName) {
                print("-- \(fontName)")
            }
        }
    }

    
    @State var selectedPage = 0
    var body: some View {
        
        // Main Stack
        
        
       
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .frame(width: 500, height: 500)
                .foregroundColor(.blue.opacity(1))
                .offset(x: 0, y: -150)
            
            
            Circle()
                .frame(width: 600, height: 600)
                .foregroundColor(.white)
                .offset(x: 0, y: -250)
            
            
            
            TabView(selection: $selectedPage)
            {
                ForEach(0..<boardData.count){
                    index in CardView(card : boardData[index]).tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            
            

          

            //Button
            Button(action : {
                selectedPage += 1
            })
            {
              Image(systemName: "chevron.right")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 22, height: 30)
            }

            .offset(x: 150, y: 400)
            
            
            
            
            //Selected Pages
            if (selectedPage == 0)
            {
                ZStack{
                    LottieView(filesname: "order")
                        .frame(width: 500, height: 500)
                        .clipShape(Circle())
                        .shadow(color: .orange, radius: 1, x: 0, y: 0)
                        .offset(x: 0, y: -140)
                }
            }
            
            if (selectedPage == 1)
            {
                ZStack{
                    LottieView(filesname: "interaction")
                        .frame(width: 500, height: 500)
                        .shadow(color: .orange, radius: 1, x: 0, y: 0)
                        .clipShape(Circle())
                        .offset(x: 10, y: -152)
                }
            }
            
            if (selectedPage == 2)
            {
                ZStack{
                    LottieView(filesname: "delivery")
                        .frame(width: 500, height: 500)
                        .shadow(color: .orange, radius: 1, x: 0, y: 0)
                        .clipShape(Circle())
                        .offset(x: 0, y: -140)
                }
            }
        }
     
       
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


