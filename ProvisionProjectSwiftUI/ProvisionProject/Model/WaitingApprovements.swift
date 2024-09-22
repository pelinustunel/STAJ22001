//
//  WaitingApprovements.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import Foundation
import SwiftUI

struct WaitingApprovementsCard : Identifiable {
    var id = UUID()
    var name: String
    var name1 : String
    var name2 : String
    var username : String
    var date : String
    
}

var waitingApprovementsData = WaitingApprovementsCard(name: "[SCRIPT ID]", name1: "Production",  name2: "Pay", username: "B.E", date: "01 Agust 2023" )

var waitingListData = Array(repeating: waitingApprovementsData, count: 2)



