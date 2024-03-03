//
//  Router.swift
//  SwiftUIRouting
//
//  Created by Marcel Mravec on 03.03.2024.
//

import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case livingroom
        case bedroom(owner: String)
    }
    
    @Published var navPath = NavigationPath()
    
    public func getViewForDestination(_ destination: Destination) -> AnyView {
        switch destination {
        case .livingroom:
            return AnyView(LivingroomView())
        case .bedroom(let owner):
            return AnyView(BedroomView(ownerName: owner))
        }
    }
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
