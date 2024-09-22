//
//  LogListView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 22.07.2024.
//

import SwiftUI

struct LogListView: View {
    var body: some View {
        // Navigation View
        NavigationStack{
            VStack{
                List(logListData, id: \.id) { logData in
                        LogCardsView(log: logData)
                    }
                }
            }
        }

    }


#Preview {
    LogListView()
}
