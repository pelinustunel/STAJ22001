//
//  Test.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 18.07.2024.
//

import Foundation

struct testCard : Identifiable {
    var id = UUID()
    var title : String
    var description : String
}


var testData : [testCard] = [
    
    testCard(title: "Provision", description: "When you order Eat Street , we'll hook you up with exclusive  coupons."),
    
    testCard(title: "Provision1", description: "1 When you order Eat Street , we'll hook you up with exclusive  coupons."),
    
    testCard(title: "Provision2", description: "2 When you order Eat Street , we'll hook you up with exclusive  coupons.")

]
