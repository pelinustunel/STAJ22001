//
//  Card.swift
//  OnBoardSwiftUI
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
//  var image : String
    var title : String
    var description : String
    
}

var boardData:[Card] = [

 //Card(image: "dancer1", title: "String", description: "String"),
 
     
 Card( title: "Provision", description: "Provision provides turnkey software solutions addressing every aspect of the business cycle for the payment industry ecosystem."),

 Card( title: "Solutions", description: "Digital Payments, Card Management, EMV, ATM"),
 
 Card( title: "References", description: "Who we work together with."),

]


