//
//  ContentView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 16.07.2024.
//

import SwiftUI
import SVGKit

struct SVGImageView: UIViewRepresentable {
    var svgName: String
    
    func makeUIView(context: Context) -> SVGKFastImageView {
        let svgImage = SVGKImage(named: svgName)
        let svgImageView = SVGKFastImageView(svgkImage: svgImage)
        return svgImageView!
    }
    
    func updateUIView(_ uiView: SVGKFastImageView, context: Context) {
        // Güncelleme kodları gerekirse buraya eklenebilir
    }
}

struct ContentView: View {
    
    // Hangi sekmenin seçili olduğunu tutat
    @State private var selectedTab = 0
    
    // Her sekmenin gezinme yolunu (navigation path) tutar.
    @State private var waitingNavigationPath = NavigationPath()
    @State private var scriptNavigationPath = NavigationPath()
    @State private var logNavigationPath = NavigationPath()
    @State private var deployNavigationPath = NavigationPath()
    
    
    init() {
        let apperances = UITabBarAppearance()
        apperances.backgroundColor = .black
        apperances.stackedLayoutAppearance.normal.iconColor = UIColor(Color(hex: "7B7B7B"))
        apperances.stackedLayoutAppearance.selected.iconColor = UIColor(Color(hex: "5CCAED"))
        
        apperances.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(Color(hex: "7B7B7B"))]
        apperances.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(Color(hex: "5CCAED"))]
        
        
        UITabBar.appearance().scrollEdgeAppearance = apperances
        UITabBar.appearance().standardAppearance = apperances
        
    }
    
    var body: some View {
        VStack {
            CustomNavigationBarView()
            TabView(selection: $selectedTab) {
                // Belirli bir sekme için gezinme yığınını (navigation stack) yönetir.
                // path: Gezinme yolunu
                WaitingApprovementsList()
                    .tabItem {
                        Label("Waiting Approvements", systemImage: "house")
                    }
                
                ScriptListView()
                    .tabItem {
                        Label("Script", systemImage: "pencil")
                    }
                
                LogListView()
                    .tabItem {
                        Label("Log", systemImage: "magnifyingglass")
                    }
                
                ListView()
                    .tabItem {
                        Label("Deploy", systemImage: "person")
                    }
            }
            .navigationTitle("")
            .toolbar(.hidden)
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

// NavigationStack : Her bir sekmenin içeriğini yönetir ve gezinme işlemlerini sağlar.
// NavigationPath : Kullanıcının her sekmede gezdiği yolları izler ve geri butonuna basıldığında doğru yerlere geri dönmesini sağlar.
