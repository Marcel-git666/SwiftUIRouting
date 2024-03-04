//
//  MainTabView.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        NavigationStack(path: $router.navPath) {
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
            .navigationDestination(for: Router.Destination.self) { destination in
                router.getViewForDestination(destination)
            }
        }
    }
}

#Preview {
    MainTabView()
}
