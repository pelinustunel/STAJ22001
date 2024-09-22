//
//  ChangeSet.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 19.07.2024.
//

import Foundation
import SwiftUI

struct ChangeSetCard : Identifiable {
   
    var id = UUID()
    var key : String
    var project : String
    var summary : String
 
}

var changeSetData = ChangeSetCard(key: "[DP-552]", project: "Digital", summary: "Transaction Reporting Ekranındaki SQL ")

var changeListData = Array(repeating: changeSetData, count: 2)
