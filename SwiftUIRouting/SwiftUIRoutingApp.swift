//
//  SwiftUIRoutingApp.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

@main
struct SwiftUIRoutingApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                HomeView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .livingroom:
                            LivingroomView()
                        case .bedroom(let owner):
                            BedroomView(ownerName: owner)
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
