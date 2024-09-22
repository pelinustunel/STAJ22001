//
//  Deploy.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import Foundation
import SwiftUI

struct DeployCard : Identifiable {
    var id = UUID()
    var name: String
    var name1 : String
    var name2: String
    var name3: String
    var name4: String
    var username : String
    var date : String
    
}

var deployData = DeployCard(name:"[Deployment ID]",name1: "CLOSE", name2: "AREA", name3: "SOFT", name4: "CUSTOMER", username: "N.A", date: "Date")

var deployListData = Array(repeating: deployData, count: 10)


struct PipelineCard : Identifiable {
    var id = UUID()
    var name: String
    var name1 : String
    var name2: String
    var name3: String
    var date : String
    
}

var pipelineData = PipelineCard(name: "[Deployment ID]", name1: "CLOSE", name2: "Customer", name3: "Person Name ", date: "Date")

var pipelineListData = Array(repeating: pipelineData, count: 3)
