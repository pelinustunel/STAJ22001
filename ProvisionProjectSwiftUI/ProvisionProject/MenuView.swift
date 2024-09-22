//
//  MenuView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 17.07.2024.
//

import SwiftUI

struct MenuView: View {
    // Hangi sekmenin seçili olduğunu tutar
    @State private var selectedTab = 0
    // Her sekmenin gezinme yolunu (navigation path) tutar.
    @State private var scriptNavigationPath = NavigationPath()
    @State private var logNavigationPath = NavigationPath()
    @State private var deployNavigationPath = NavigationPath()

    var body: some View {
        // Alt gezinme çubuğunu (bottom navigation) oluşturur.
        // Seçili sekmenin indeksini selectedTable ile bağlar.
        TabView(selection: $selectedTab) {
            // Belirli bir sekme için gezinme yığınını (navigation stack) yönetir.
            // path: Gezinme yolunu
            NavigationStack(path: $scriptNavigationPath) {
                HomeView()
            }
            // Sekmenin alt gezinme çubuğundaki etiketini ve simgesini belirler.
            .tabItem {
                Label("Home", systemImage: "house")
            }
            // Her sekmeye bir indeks verir
            .tag(0)
            
            NavigationStack(path: $logNavigationPath) {
                ScriptView()
            }
            .tabItem {
                Label("Script", systemImage: "pencil")
            }
            // Her sekmeye bir indeks verir
            .tag(1)
            
            NavigationStack(path: $logNavigationPath) {
                LogView()
            }
            .tabItem {
                Label("Log", systemImage: "magnifyingglass")
            }
            // Her sekmeye bir indeks verir
            .tag(2)
            
            NavigationStack(path: $deployNavigationPath) {
                DeployView()
            }
            .tabItem {
                Label("Deploy", systemImage: "person")
            }
            // Her sekmeye bir indeks verir
            .tag(3)
        }
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Waiting Approvements")
            
        }
    }
}

struct ScriptView: View {
    var body: some View {
        
        // VStack:  Dikey bir düzen oluşturmak için
        VStack {
            Text("Script")
                .padding()
            NavigationLink("Go to Details", destination: ScriptDetailView())
        }
    }
}

struct ScriptDetailView: View {
    var body: some View {
        Text("Home Detail View")
    }
}

struct LogView: View {
    var body: some View {
        VStack {
            Text("Log View")
            NavigationLink("Go to Details", destination: LogDetailView())
        }
    }
}



struct LogDetailView: View {
    var body: some View {
        Text("Log Detail View")
    }
}

struct DeployView: View {
    var body: some View {
        VStack {
            Text("Deploy View")
            NavigationLink("Go to Details", destination: DeployDetailView())
        }
    }
}

struct DeployDetailView: View {
    var body: some View {
        Text("Deploy Detail View")
    }
}


#Preview {
    MenuView()
}
