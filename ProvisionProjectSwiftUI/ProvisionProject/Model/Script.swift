//
//  Script.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import Foundation
import SwiftUI

struct ScriptCard : Identifiable {
    var id = UUID()
    var name: String
    var name1 : String
    var name2: String
    var name3: String
    var name4: String
    var name5 : String
    var username : String
    var date : String
    
}

var scriptData = ScriptCard(name:"[SCRIPT ID]",name1: "OPEN", name2: "Zafer", name3: "Master", name4: "Production", name5: "SQA", username: "E.Ç", date: "Date")

var scriptListData = Array(repeating: scriptData, count: 10)

