//
//  CardView.swift
//  OnBoardSwiftUI
//
//  Created by Pelin Üstünel on 17.07.2024.
//
//
import SwiftUI

struct CardView: View {
    
    var card : Card
    var body: some View {
        VStack{
            

//            Image(card.image)
//                .resizable()
//
            
            Text(card.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.custom("SFProText-Regular", size: 34))
               
            
            Text(card.description)
                .font(.custom("SFProText-Regular", size: 25))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .font(.system(size: 14))
                .foregroundColor(.white)
                .frame(width: 335, height: 100)
                .padding()
                
        
        }.padding()
            .offset(x: 0, y: 250)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: boardData[1])
    }
}
