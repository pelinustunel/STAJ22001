//
//  Log.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import Foundation
import SwiftUI

struct LogCard : Identifiable {
    var id = UUID()
    var name: String
    var name1 : String
    var name2: String
    var name3: String
    var name4: String
    var username : String
    var date : String
}

var logData = LogCard(name:"[LOG ID]",name1: "CLOSE", name2: "SBS", name3: "SOFT", name4: "CUSTOMER", username: "İ.H.A", date: "01 Agust 2023")

var logListData = Array(repeating: logData, count: 10)

