//
//  Files.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import Foundation

struct FilesAnalysisCard : Identifiable{
    
    var id = UUID()
    var select : String
    var insert : String
    var update : String
    var delete :  String
    var execute : String
    var call : String
    
}


var filesAnalysisCardDataName = FilesAnalysisCard(select: "SELECT", insert: "INSERT", update: "UPDATE", delete: "DELETE", execute: "EXECUTE", call: "CALL")
var filesAnalysisCardData = FilesAnalysisCard(select: "0", insert: "0", update: "707", delete: "0", execute: "0", call: "0")

var filesAnalysisDataNameList = Array(repeating: filesAnalysisCardDataName, count: 1)
var filesAnalysisDataList = Array(repeating: filesAnalysisCardData, count: 1)



struct VersionHistoryCard : Identifiable{
    
    var id = UUID()
    var versionSegment : String
    var name : String
    var commet : String
    var date : String
    
}

var versionHistoryCardData = VersionHistoryCard(versionSegment: "Version 1", name: "Ege Ediz", commet: "Create", date: "10 Tem 24 15:12")
var versionHistoryDataList = Array(repeating: versionHistoryCardData, count: 2)

struct AnalysisSectionCard : Identifiable{
    
    var id = UUID()
    var versionSegment : String
    var name : String
    var commet : String
    var date : String
    
}

var analysisSectionCardData = AnalysisSectionCard(versionSegment: "Analysis 1", name: "Selin Tuna", commet: "Create", date: "10 Tem 24 15:12")
var analysisSectionDataList = Array(repeating: analysisSectionCardData, count: 5)




struct ConfirmationCard : Identifiable {
    var id = UUID()
    var fileName : String
    var version : String
    var size : String
    var status : String
}

var confirmationCardData = ConfirmationCard(fileName: "MC Prod V2 - BiTaksi İletilmeyen WebHooklar.SQL ", version: "1.0", size: "98.74KB", status: "Approved")
//var confirmationCardList = Array(repeating: confirmationCardData, count: 1)


struct FilesCard : Identifiable {
    var id = UUID()
    var sql : String
    var version : String
    var size : String
    var status :  String
}

var filesCardData = FilesCard(sql: "Parameter.Prt_Parameter.SQL", version: "1.0", size: "199B", status: "New File")
var filesCardList = Array(repeating: filesCardData, count: 1)
