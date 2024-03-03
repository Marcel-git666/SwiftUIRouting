//
//  MainTabView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            TasksView()
                .tabItem {
                    Label("Tasks", systemImage: "checklist")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    MainTabView()
}
