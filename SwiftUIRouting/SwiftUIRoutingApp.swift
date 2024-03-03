//
//  SwiftUIRoutingApp.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

@main
struct SwiftUIRoutingApp: App {
    @StateObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                MainTabView()
            }
            .environmentObject(router)
        }
    }
}
